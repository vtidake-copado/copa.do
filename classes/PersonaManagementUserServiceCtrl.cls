public with sharing class PersonaManagementUserServiceCtrl {
    private static List<String> discardUsers = new List<String>{ 'Integration User', 'Security User' };

    @AuraEnabled
    public static List<PersonaUser> getUsers() {
        List<PersonaUser> result = new List<PersonaUser>();
        Map<Id, Persona_Definition__c> personaDefinitionById = new Map<Id, Persona_Definition__c>(
            [SELECT Name FROM Persona_Definition__c WITH USER_MODE]
        );
        for (User user : [
            SELECT Name, Email, IsActive, Persona_Id__c, Username
            FROM User
            WHERE UserType = 'Standard' AND Name NOT IN :discardUsers AND IsActive = TRUE
            WITH SYSTEM_MODE
            LIMIT 2000
        ]) {
            PersonaUser personaUser = new PersonaUser();
            personaUser.user = user;
            personaUser.persona = personaDefinitionById.get(user.Persona_Id__c);
            result.add(personaUser);
        }
        return result;
    }

    @AuraEnabled
    public static List<PersonaUser> getUsersWithSearchTerm(String searchTerm) {
        List<PersonaUser> result = new List<PersonaUser>();
        Map<Id, Persona_Definition__c> personaDefinitionById = new Map<Id, Persona_Definition__c>(
            [SELECT Name FROM Persona_Definition__c WITH USER_MODE]
        );

        List<List<User>> users = [FIND :searchTerm IN ALL FIELDS RETURNING User(Id, Name, Email, IsActive, Persona_Id__c, Username, UserType)];

        for (List<User> lUsers : users) {
            for (User user : lUsers) {
                if (user.UserType == 'Standard' && user.IsActive == true && !discardUsers.contains(user.Name)) {
                    PersonaUser personaUser = new PersonaUser();
                    personaUser.user = user;
                    personaUser.persona = personaDefinitionById.get(user.Persona_Id__c);
                    result.add(personaUser);
                }
            }
        }

        return result;
    }

    @AuraEnabled
    public static List<User> getUsersForPersona(String personaId) {
        return [SELECT Name, Username, Email, IsActive FROM User WHERE Persona_Id__c = :personaId WITH SYSTEM_MODE];
    }

    @AuraEnabled
    public static void addUser1(String personaId, List<String> userIds) {
        Persona.AddUserRequest request = new Persona.AddUserRequest();
        request.personaId = personaId;
        request.userIds = userIds;
        Persona.UserService.add1(request);
    }

    @AuraEnabled
    public static void addUser2(String personaId, List<String> userIds) {
        Persona.AddUserRequest request = new Persona.AddUserRequest();
        request.personaId = personaId;
        request.userIds = userIds;
        Persona.UserService.add2(request);
    }

    @AuraEnabled
    public static void addUser3(String personaId, List<String> userIds) {
        Persona.AddUserRequest request = new Persona.AddUserRequest();
        request.personaId = personaId;
        request.userIds = userIds;
        Persona.UserService.add3(request);
    }

    @AuraEnabled
    public static void addUser4(String personaId, List<String> userIds) {
        Persona.AddUserRequest request = new Persona.AddUserRequest();
        request.personaId = personaId;
        request.userIds = userIds;
        Persona.UserService.add4(request);
    }

    @AuraEnabled
    public static void addUser5(String personaId, List<String> userIds) {
        Persona.AddUserRequest request = new Persona.AddUserRequest();
        request.personaId = personaId;
        request.userIds = userIds;
        Persona.UserService.add5(request);
    }

    @AuraEnabled
    public static void addUser6(String personaId, List<String> userIds) {
        Persona.AddUserRequest request = new Persona.AddUserRequest();
        request.personaId = personaId;
        request.userIds = userIds;
        Persona.UserService.add6(request);
    }

    @AuraEnabled
    public static void removeUser1(String personaId, List<String> userIds) {
        Persona.RemoveUserRequest request = new Persona.RemoveUserRequest();
        request.personaId = personaId;
        request.userIds = userIds;
        Persona.UserService.remove1(request);
    }

    @AuraEnabled
    public static void removeUser2(String personaId, List<String> userIds) {
        Persona.RemoveUserRequest request = new Persona.RemoveUserRequest();
        request.personaId = personaId;
        request.userIds = userIds;
        Persona.UserService.remove2(request);
    }

    @AuraEnabled
    public static void removeUser3(String personaId, List<String> userIds) {
        Persona.RemoveUserRequest request = new Persona.RemoveUserRequest();
        request.personaId = personaId;
        request.userIds = userIds;
        Persona.UserService.remove3(request);
    }

    @AuraEnabled
    public static void resetPassword(String userId) {
        System.resetPassword(userId, true);
    }

    public with sharing class PersonaUser {
        @AuraEnabled
        public User user;
        @AuraEnabled
        public Persona_Definition__c persona;
    }
}