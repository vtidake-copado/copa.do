public with sharing class DataLoader {
    @AuraEnabled
    public static List<Object> createData(String inputFileName, String entityType) {
        StaticResource inputCsvFile;
    	String csvAsString;
    	String[] csvFileLines;
        csvFileLines = new String[]{};
        List<sObject> entityObjList = new List<sObject>();
        
        try{
            // Read CSV file body and store it in variable
            String inputFileNameCondition = '%' + inputFileName + '%';
            System.debug(inputFileNameCondition);
			inputCsvFile = [SELECT Id, Body FROM StaticResource WHERE Name LIKE :inputFileNameCondition ];
            csvAsString = inputCsvFile.Body.toString();
            csvAsString = csvAsString.replaceAll('(\r\n|\r)','\n');
            
            // Split CSV String to lines
            csvFileLines = csvAsString.split('\n'); 
            System.debug(csvFileLines);
            
            String[] inputFields = csvFileLines[0].split(',');
            
           
            // Iterate CSV file lines and retrieve one column at a time.
            for(Integer i = 1; i < csvFileLines.size(); i++) {
                String[] csvRecordData = csvFileLines[i].split(',');
                
                sObject entityObj = Schema.getGlobalDescribe().get(entityType).newSObject();
                
                for( Integer j = 0 ; j < inputFields.size() ; j++ ) {
                    String value = inputFields[j];
                    if (value.startsWith('#')) {
                        String[] lookupData = value.split('#');
                        String lookupEntity = lookupData[1];
                        String lookupClauseField = lookupData[2];
                        String fieldNameForLookupInsert = lookupData[3];
                        String lookupValue = csvRecordData[j];
                        lookupValue = '\'' + lookupValue + '\'';
                        String lookupQuery = 'SELECT Id, Name FROM ' + lookupEntity + ' WHERE ' + lookupClauseField + ' = ' + lookupValue;
                        System.debug(lookupQuery);
                        List<sObject> lookupId = Database.query(lookupQuery);
                        
                        entityObj.put(fieldNameForLookupInsert, lookupId[0].Id);
                        
                    } 
                    else if (value.startsWith('@')) {
                        String[] dateAmendData = value.split('@');
                        String dateInputEntity = dateAmendData[1];
                        String dateInputField = dateAmendData[2];
                        String fieldNameForDateInsert = dateAmendData[3];
                        String dateAmendCondition = csvRecordData[j];
                        String dateAmendQuery = 'SELECT ' + dateInputField + ' FROM ' + dateInputEntity + ' LIMIT 1';
                        System.debug(dateAmendQuery);
                        List<sObject> dateInputObj = Database.query(dateAmendQuery);
                        DateTime dateInput = (DateTime) dateInputObj[0].get(dateInputField);
                        System.debug(dateInput);
                        
                        // Get datatype of field for date amend
                        sObject dateInputEntityObj = Schema.getGlobalDescribe().get(entityType).newSObject();
                        Map<String, Schema.SObjectField> fieldMap = dateInputEntityObj.getSObjectType().getDescribe().fields.getMap();
                        Schema.DisplayType fieldDataType = fieldMap.get(fieldNameForDateInsert).getDescribe().getType();
                        System.debug(fieldDataType);
                        
                        Date dateValueConversion;
                        
                        if (fieldDataType == Schema.DisplayType.Date) {
                            System.debug('Field is of Date Type');
                            dateValueConversion = dateInput.dateGmt();
                        }
                        
                        if (dateAmendCondition.startsWith('ADD')) {
                            Object dateValueToInsert;
                            String[] dateAmendConditionList = dateAmendCondition.split('_');
                            Integer numberOfDays = Integer.valueOf(dateAmendConditionList[1]);
                            if (fieldDataType == Schema.DisplayType.Date) {
                                dateValueToInsert = dateValueConversion + (numberOfDays);
                            } else {
                                dateValueToInsert = dateInput + (numberOfDays);
                            }
                            entityObj.put(fieldNameForDateInsert, dateValueToInsert);
                        } 
                        else if (dateAmendCondition.startsWith('SUB')) {
                            Object dateValueToInsert;
                            String[] dateAmendConditionList = dateAmendCondition.split('_');
                            Integer numberOfDays = Integer.valueOf(dateAmendConditionList[1]);
                            if (fieldDataType == Schema.DisplayType.Date) {
                                dateValueToInsert = dateValueConversion - (numberOfDays);
                            } else {
                                dateValueToInsert = dateInput - (numberOfDays);
                            }
                            entityObj.put(fieldNameForDateInsert, dateValueToInsert);
                        }
                        else if (dateAmendCondition.startsWith('RANDOM')) {
                            Object dateValueToInsert;
                            String[] dateAmendConditionList = dateAmendCondition.split('_');
                            Integer startNum = Integer.valueOf(dateAmendConditionList[1]);
                            Integer endNum = Integer.valueOf(dateAmendConditionList[2]);
                            
                            Integer numberOfDays;
                            Integer randomNumber = Integer.valueof((math.random() * 10));
                            boolean addSubFlag= math.mod(randomNumber, 2) == 0 ? true : false;
                            integer diffInRange = endNum - startNum;
                            Integer randomNum = Math.mod(Math.round(Math.random() * diffInRange + 1), diffInRange);
                            
                            if (addSubFlag){
                                numberOfDays = (diffInRange > 1) ? (startNum + randomNum) : startNum;
                            } else {
                                numberOfDays = (diffInRange > 1) ? (endNum - randomNum) : endNum;
        					}
                            
                            if (fieldDataType == Schema.DisplayType.Date) {
                                dateValueToInsert = dateValueConversion + (numberOfDays);
                            } else {
                                dateValueToInsert = dateInput + (numberOfDays);
                            }
                            entityObj.put(fieldNameForDateInsert, dateValueToInsert);
                        }
                        else {
                            Object dateValueToInsert;
                            if (fieldDataType == Schema.DisplayType.Date) {
                                dateValueToInsert = dateValueConversion;
                            } else {
                                dateValueToInsert = dateInput;
                            }
                            entityObj.put(fieldNameForDateInsert, dateValueToInsert);
                        }
                    }
                    else if (value.startsWith('D@')) {
                        String[] dateInputData = value.split('@');
                        String fieldNameForDateInsert = dateInputData[1];
                        Date dateInput = Date.parse(csvRecordData[j]);
                        entityObj.put(fieldNameForDateInsert, dateInput);
                    }
                    else if (value.startsWith('DT@')) {
                        String[] dateInputData = value.split('@');
                        String fieldNameForDateInsert = dateInputData[1];
                        Datetime dateInput = (DateTime)JSON.deserialize('"' + csvRecordData[j] + '"', DateTime.class);
                        // DateTime dateInput = DateTime.parse(csvRecordData[j]);
                        entityObj.put(fieldNameForDateInsert, dateInput);
                    }
                    else {
                        entityObj.put(value, csvRecordData[j]);
                    }
                }

                entityObjList.add(entityObj);
            }
            
            // if all correct then insert Objects into Org
            if(entityObjList.size() > 0)
            	insert entityObjList;
        }
        catch (Exception e)
        {
            ApexPages.Message errorMessage = new ApexPages.Message(ApexPages.severity.ERROR,'An error has occured while data load');
            // ApexPages.addMessage(errorMessage);
            System.debug(errorMessage);
        }  
        
        return entityObjList;
    }
}