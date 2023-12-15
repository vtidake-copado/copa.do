{
    "recordTypeMap": {},
    "RecordSetBundles": [
      {
        "Records": [
          {
            "attributes": {
              "type": "copado__Function__c",
              "url": "/services/data/v53.0/sobjects/copado__Function__c/a0l7Y000005w8hcQAA"
            },
            "copado__API_Name__c": "Mule_Promote",
            "copado__Image_Name__c": "copado-multicloud-mulesoft:v1",
            "copado__Options__c": "[ ]",
            "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"git_json\",\n  \"defaultValue\" : \"{$Context.Repository.Credential}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"user_stories\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.userStoryBranches}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"promotion\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.promotionBranchName}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"target_branch\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.destinationBranchName}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"merge_strategy\",\n  \"defaultValue\" : \"theirs\"\n}, {\n  \"required\" : false,\n  \"name\" : \"upload_to_artifact\",\n  \"defaultValue\" : \"false\"\n}, {\n  \"required\" : false,\n  \"name\" : \"artifact_url\",\n  \"defaultValue\" : \"\"\n}, {\n  \"required\" : false,\n  \"name\" : \"artifact_username\",\n  \"defaultValue\" : \"\"\n}, {\n  \"required\" : false,\n  \"name\" : \"artifact_password\",\n  \"defaultValue\" : \"\"\n}, {\n  \"required\" : false,\n  \"name\" : \"artifact_profile\",\n  \"defaultValue\" : \"\"\n}, {\n  \"required\" : false,\n  \"name\" : \"tag\",\n  \"defaultValue\" : \"{$Job.ExecutionParent.Release__r.Version__c}\"\n} ]",
            "copado__Script__c": "promotion_branch=\"$promotion\"\ngit_depth=${git_depth:-100}  # set a default git depth of 100 commits\nmerge_strategy=${merge_strategy-theirs} # set default merge strategy to ours (only if unset)\nif [ -n \"$merge_strategy\" ]; then merge_strategy_option=(-X \"$merge_strategy\"); else merge_strategy_option=(); fi\n\necho \"promotion branch: $promotion_branch\"\necho \"merge strategy: $merge_strategy\"\necho \"user stories: $user_stories\"\necho \"git_depth: $git_depth\"\n\ncopado --progress \"fetching $target_branch\"\ncopado-git-get --depth \"$git_depth\" \"$target_branch\"\ncopado-git-get --depth \"$git_depth\" --create \"$promotion_branch\"\n\n# branches=$(echo \"$user_stories\" | jq -c -r '.[]')\nbranches=$(node -p \"$user_stories.join(' ')\")\nfor user_story in ${branches[@]};\ndo\n    echo \"merging $user_story\"\n    copado-git-get --depth \"$git_depth\" \"$user_story\"\n    git checkout \"$promotion_branch\"\n    (git merge \"${merge_strategy_option[@]}\" -m \"auto resolved $user_story win over $promotion_branch\" \"$user_story\") || (copado -p \"Failed\" -e \"Merge conflict\" && exit 1)\ndone\n\ncopado --progress \"pushing $promotion_branch $tag\"\n\nif [[ -z \"$tag\" && \"$upload_to_artifact\" = \"true\" ]]; then\n\tcopado -p \"Failed\" -e \"Please add a valid release tag\";\n    exit 1;\nfi\n\nif [ \"$upload_to_artifact\" = \"true\" ]; then\n    version=\"$tag-SNAPSHOT\"\n    mvn versions:set -DnewVersion=\"$version\" -P \"$artifact_profile\"\n\n    mvn clean package deploy -e -Dartifact_url=\"$artifact_url\" \\\n            -Dversion=\"$version\" -Dartifact_username=\"$artifact_username\" \\\n            -Dartifact_password=\"$artifact_password\" -P \"$artifact_profile\"\nfi\n\nif [ -n \"$tag\" ]; then\n    git tag \"$tag\"\n    git push --atomic origin \"$promotion_branch\" \"$tag\"\nelse\n    echo \"no tag specified\"\n    git push origin \"$promotion_branch\"\nfi",
            "copado__Type__c": "Custom",
            "copado__Worker_Size__c": "S",
            "CreatedDate": "2022-02-09T07:53:37.000+0000",
            "Id": "a0l7Y000005w8hcQAA",
            "IsDeleted": false,
            "LastModifiedDate": "2022-02-09T07:54:08.000+0000",
            "LastReferencedDate": "2022-02-09T07:54:08.000+0000",
            "LastViewedDate": "2022-02-09T07:54:08.000+0000",
            "Name": "Mule Promote",
            "SystemModstamp": "2022-02-09T07:54:08.000+0000"
          },
          {
            "attributes": {
              "type": "copado__Function__c",
              "url": "/services/data/v53.0/sobjects/copado__Function__c/a0l7Y000005w8hdQAA"
            },
            "copado__API_Name__c": "Mule_Deploy",
            "copado__Description__c": "A copado function to deploy mule app using maven\r\nIt uses OAuth flow to authenticate with mule app",
            "copado__Image_Name__c": "copado-multicloud-mulesoft:v1",
            "copado__Options__c": "[ ]",
            "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"git_json\",\n  \"defaultValue\" : \"{$Context.Repository.Credential}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"promotion\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.promotionBranchName}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"app_name\",\n  \"defaultValue\" : \"{$Destination.Property.Mule_App_Name}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"client_id\",\n  \"defaultValue\" : \"{$Pipeline.Property.Mule_Client_Id}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"client_secret\",\n  \"defaultValue\" : \"{$Pipeline.Property.Mule_Client_Secret}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"environment_name\",\n  \"defaultValue\" : \"{$Destination.Property.Mule_Environment_Name}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"target_branch\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.destinationBranchName}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"worker_count\",\n  \"defaultValue\" : \"{$Destination.Property.Mule_Worker_Count}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"worker_type\",\n  \"defaultValue\" : \"{$Destination.Property.Mule_Worker_Type}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"skip_test\",\n  \"defaultValue\" : \"{$Destination.Property.Mule_Skip_Test}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"runtime_version\",\n  \"defaultValue\" : \"{$Pipeline.Property.Mule_Runtime_Version}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"enterprise_username\"\n}, {\n  \"required\" : false,\n  \"name\" : \"enterprise_password\"\n}, {\n  \"required\" : false,\n  \"name\" : \"region\",\n  \"defaultValue\" : \"us-east-1\"\n}, {\n  \"required\" : false,\n  \"name\" : \"verbose_debug\",\n  \"defaultValue\" : \"false\"\n}, {\n  \"required\" : false,\n  \"name\" : \"environment_properties\"\n}, {\n  \"required\" : false,\n  \"name\" : \"global_properties\"\n}, {\n  \"required\" : false,\n  \"name\" : \"extra_flags\"\n}, {\n  \"required\" : false,\n  \"name\" : \"deploy_from_artifact\",\n  \"defaultValue\" : \"false\"\n}, {\n  \"required\" : false,\n  \"name\" : \"artifact_username\",\n  \"defaultValue\" : \"\"\n}, {\n  \"required\" : false,\n  \"name\" : \"artifact_password\",\n  \"defaultValue\" : \"\"\n}, {\n  \"required\" : false,\n  \"name\" : \"artifact_profile\",\n  \"defaultValue\" : \"\"\n}, {\n  \"required\" : false,\n  \"name\" : \"artifact_url\",\n  \"defaultValue\" : \"\"\n}, {\n  \"required\" : false,\n  \"name\" : \"artifact_name\",\n  \"defaultValue\" : \"\"\n}, {\n  \"required\" : false,\n  \"name\" : \"artifact_id\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"tag\",\n  \"defaultValue\" : \"{$Job.ExecutionParent.Promotion__r.Release__r.Version__c}\"\n} ]",
            "copado__Script__c": "branch=\"$promotion\"\ncopado --progress \"fetching $branch\"\ncopado-git-get \"$branch\"\ncopado --progress \"deploying $app_name\"\n\nif [ \"$environment_properties\" ]; then\n    environment_options=($(node -p \"(Object.entries($environment_properties).map(([k, v]) => '-D' + k + '=' + v).join(' '))\"));\nelse\n    environment_options=();\nfi\n\nif [ \"$global_properties\" ]; then\n    global_options=($(node -p \"(Object.entries($global_properties).map(([k, v]) => '-D' + k + '=' + v).join(' '))\"));\nelse\n    global_options=();\nfi\n\nif [ \"$extra_flags\" ]; then additional_flags=(\"$extra_flags\"); else additional_flags=(); fi\nif [ \"$skip_test\" = \"true\" ]; then skip_test_option=(-DskipTests); else skip_test_option=(); fi\nif [ \"$verbose_debug\" = \"true\"]; then debug_option=(-X); else debug_option=(); fi\n\nmkdir -p /home/func/.m2\n\nif [[ -z \"$tag\" && \"$deploy_from_artifact\" = \"true\" ]]; then\n\tcopado -p \"Failed\" -e \"Please add a valid release tag\";\n    exit 1;\nfi\n\nif [ \"$deploy_from_artifact\" = \"true\" ]; then\ncat << __EOF__ > /home/func/.m2/settings.xml\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<settings xsi:schemaLocation=\"http://maven.apache.org/SETTINGS/1.1.0 http://maven.apache.org/xsd/settings-1.1.0.xsd\" xmlns=\"http://maven.apache.org/SETTINGS/1.1.0\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n    <servers>\n        <server>\n            <id>snapshots</id>\n            <username>$artifact_username</username>\n            <password>$artifact_password</password>\n        </server>\n        <server>\n            <id>MuleRepository</id>\n            <username>$enterprise_username</username>\n            <password>$enterprise_password</password>\n        </server>\n    </servers>\n    <profiles>\n        <profile>\n            <repositories>\n                <repository>\n                    <snapshots />\n                    <id>snapshots</id>\n                    <name>mule-poc</name>\n                    <url>$artifact_url/$artifact_name</url>\n                </repository>\n            </repositories>\n            <pluginRepositories>\n                <pluginRepository>\n                    <snapshots />\n                    <id>snapshots</id>\n                    <name>mule-poc</name>\n                    <url>$artifact_url/$artifact_name</url>\n                </pluginRepository>\n            </pluginRepositories>\n            <id>artifactory</id>\n        </profile>\n    </profiles>\n    <activeProfiles>\n        <activeProfile>artifactory</activeProfile>\n    </activeProfiles>\n</settings>\n__EOF__\n\ncat /home/func/.m2/settings.xml\nversion=\"$tag-SNAPSHOT\";\n\ncopado --progress \"Downloading from artifact\";\nmvn dependency:get -Ddest=./muledeploy.jar -DgroupId=com.mycompany \\\n    -DartifactId=\"$artifact_id\" -Dversion=\"$version\" -Dclassifier=mule-application \\\n    -Dpackaging=jar -s /home/func/.m2/settings.xml -P \"$artifact_profile\"\n\ncopado --progress \"starting deployment(From jfrog)\";\nmvn mule:deploy -Dmule.artifact=\"./muledeploy.jar\" -e \\\n    -Dclientid=\"$client_id\" -Dclientsecret=\"$client_secret\" \\\n    -Dappname=\"$app_name\" -Denvironment=\"$environment_name\" -DworkerCount=\"$worker_count\" \\\n    -DworkerType=\"$worker_type\" -Druntime_version=\"$runtime_version\" -Dregion=\"$region\" -P \"mulesoft-releases\" \\\n    \"${skip_test_option[@]}\" \"${environment_options[@]}\" \"${global_options[@]}\" \"${additional_flags[@]}\" \"${debug_option[@]}\";\nelse\ncat << __EOF__ > /home/func/.m2/settings.xml\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<settings xsi:schemaLocation=\"http://maven.apache.org/SETTINGS/1.1.0 http://maven.apache.org/xsd/settings-1.1.0.xsd\" xmlns=\"http://maven.apache.org/SETTINGS/1.1.0\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n    <servers>\n        <server>\n            <id>MuleRepository</id>\n            <username>$enterprise_username</username>\n            <password>$enterprise_password</password>\n        </server>\n    </servers>\n</settings>\n__EOF__\n    copado --progress \"starting deployment(Mule clean)\";\n    mvn clean package deploy -DmuleDeploy -e -Dclientid=\"$client_id\" \\\n        -Dclientsecret=\"$client_secret\" \\\n        -Dappname=\"$app_name\" -Denvironment=\"$environment_name\" -DworkerCount=\"$worker_count\" \\\n        -DworkerType=\"$worker_type\" -Druntime_version=\"$runtime_version\" -Dregion=\"$region\" \\\n        \"${skip_test_option[@]}\" \"${environment_options[@]}\" \"${global_options[@]}\" \"${additional_flags[@]}\" \"${debug_option[@]}\";\nfi\ncopado-git-get --depth 100 \"$target_branch\"\ngit merge \"$branch\" || (copado -p \"Failed\" -e \"Merge conflict\" && exit 1)\ngit push origin \"$target_branch\"",
            "copado__Type__c": "Custom",
            "copado__Worker_Size__c": "S",
            "CreatedDate": "2022-02-09T07:53:37.000+0000",
            "Id": "a0l7Y000005w8hdQAA",
            "IsDeleted": false,
            "LastModifiedDate": "2022-02-09T07:54:08.000+0000",
            "LastReferencedDate": "2022-02-09T07:54:08.000+0000",
            "LastViewedDate": "2022-02-09T07:54:08.000+0000",
            "Name": "Mule Deploy",
            "SystemModstamp": "2022-02-09T07:54:08.000+0000"
          }
        ],
        "ObjectType": "copado__Function__c"
      },
      {
        "Records": [
          {
            "attributes": {
              "type": "copado__JobTemplate__c",
              "url": "/services/data/v53.0/sobjects/copado__JobTemplate__c/a0u7Y00000G1L6oQAF"
            },
            "copado__ApiName__c": "Mule_Promote_1",
            "copado__Description__c": "Job template to promote a mule app",
            "copado__Type__c": "Custom",
            "copado__Version__c": 1,
            "CreatedDate": "2022-02-09T07:53:41.000+0000",
            "Id": "a0u7Y00000G1L6oQAF",
            "IsDeleted": false,
            "LastModifiedDate": "2022-02-09T07:53:41.000+0000",
            "LastReferencedDate": "2022-02-09T07:53:41.000+0000",
            "LastViewedDate": "2022-02-09T07:53:41.000+0000",
            "Name": "Mule_Promote",
            "SystemModstamp": "2022-02-09T07:53:41.000+0000"
          },
          {
            "attributes": {
              "type": "copado__JobTemplate__c",
              "url": "/services/data/v53.0/sobjects/copado__JobTemplate__c/a0u7Y00000G1L6pQAF"
            },
            "copado__ApiName__c": "Mule_Deploy_1",
            "copado__Description__c": "Job template to deploy Mule app",
            "copado__Type__c": "Custom",
            "copado__Version__c": 1,
            "CreatedDate": "2022-02-09T07:53:41.000+0000",
            "Id": "a0u7Y00000G1L6pQAF",
            "IsDeleted": false,
            "LastModifiedDate": "2022-02-09T07:53:41.000+0000",
            "LastReferencedDate": "2022-02-09T07:53:41.000+0000",
            "LastViewedDate": "2022-02-09T07:53:41.000+0000",
            "Name": "Mule_Deploy",
            "SystemModstamp": "2022-02-09T07:53:41.000+0000"
          }
        ],
        "ObjectType": "copado__JobTemplate__c"
      },
      {
        "Records": [
          {
            "attributes": {
              "type": "copado__JobStep__c",
              "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0t7Y000006byeTQAQ"
            },
            "copado__ApiName__c": "Mule_Promote_Mule_Promote",
            "copado__ConfigJson__c": "{\"functionName\":\"Mule_Promote\",\"parameters\":[{\"name\":\"git_json\",\"value\":\"{$Context.Repository.Credential}\",\"required\":true},{\"name\":\"user_stories\",\"value\":\"{$Context.JobExecution__r.DataJson.userStoryBranches}\",\"required\":true},{\"name\":\"promotion\",\"value\":\"{$Context.JobExecution__r.DataJson.promotionBranchName}\",\"required\":true},{\"name\":\"target_branch\",\"value\":\"{$Context.JobExecution__r.DataJson.destinationBranchName}\",\"required\":true},{\"name\":\"merge_strategy\",\"value\":\"theirs\",\"required\":false},{\"name\":\"upload_to_artifact\",\"value\":\"false\",\"required\":false},{\"name\":\"artifact_url\",\"value\":\"\",\"required\":false},{\"name\":\"artifact_username\",\"value\":\"\",\"required\":false},{\"name\":\"artifact_password\",\"value\":\"\",\"required\":false},{\"name\":\"artifact_profile\",\"value\":\"\",\"required\":false},{\"name\":\"tag\",\"value\":\"{$Job.ExecutionParent.Release__r.Version__c}\",\"required\":false}]}",
            "copado__CustomType__c": "Function",
            "copado__JobTemplate__c": "a0u7Y00000G1L6oQAF",
            "copado__Order__c": 1,
            "copado__Type__c": "Function",
            "CreatedDate": "2022-02-09T07:53:41.000+0000",
            "Id": "a0t7Y000006byeTQAQ",
            "IsDeleted": false,
            "LastModifiedDate": "2022-02-09T07:53:41.000+0000",
            "Name": "Mule_Promote",
            "SystemModstamp": "2022-02-09T07:53:41.000+0000"
          },
          {
            "attributes": {
              "type": "copado__JobStep__c",
              "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0t7Y000006byeUQAQ"
            },
            "copado__ApiName__c": "Mule_Deploy_Mule_Deploy",
            "copado__ConfigJson__c": "{\"functionName\":\"Mule_Deploy\",\"parameters\":[{\"name\":\"git_json\",\"value\":\"{$Context.Repository.Credential}\",\"required\":true},{\"name\":\"promotion\",\"value\":\"{$Context.JobExecution__r.DataJson.promotionBranchName}\",\"required\":true},{\"name\":\"app_name\",\"value\":\"{$Destination.Property.Mule_App_Name}\",\"required\":true},{\"name\":\"client_id\",\"value\":\"{$Pipeline.Property.Mule_Client_Id}\",\"required\":true},{\"name\":\"client_secret\",\"value\":\"{$Pipeline.Property.Mule_Client_Secret}\",\"required\":true},{\"name\":\"environment_name\",\"value\":\"{$Destination.Property.Mule_Environment_Name}\",\"required\":true},{\"name\":\"target_branch\",\"value\":\"{$Context.JobExecution__r.DataJson.destinationBranchName}\",\"required\":true},{\"name\":\"worker_count\",\"value\":\"{$Destination.Property.Mule_Worker_Count}\",\"required\":true},{\"name\":\"worker_type\",\"value\":\"{$Destination.Property.Mule_Worker_Type}\",\"required\":true},{\"name\":\"skip_test\",\"value\":\"{$Destination.Property.Mule_Skip_Test}\",\"required\":false},{\"name\":\"runtime_version\",\"value\":\"{$Pipeline.Property.Mule_Runtime_Version}\",\"required\":true},{\"name\":\"enterprise_username\",\"required\":false},{\"name\":\"enterprise_password\",\"required\":false},{\"name\":\"region\",\"value\":\"us-east-1\",\"required\":false},{\"name\":\"verbose_debug\",\"value\":\"false\",\"required\":false},{\"name\":\"environment_properties\",\"required\":false},{\"name\":\"global_properties\",\"required\":false},{\"name\":\"extra_flags\",\"required\":false},{\"name\":\"deploy_from_artifact\",\"value\":\"false\",\"required\":false},{\"name\":\"artifact_username\",\"value\":\"\",\"required\":false},{\"name\":\"artifact_password\",\"value\":\"\",\"required\":false},{\"name\":\"artifact_profile\",\"value\":\"\",\"required\":false},{\"name\":\"artifact_url\",\"value\":\"\",\"required\":false},{\"name\":\"artifact_name\",\"value\":\"\",\"required\":false},{\"name\":\"artifact_id\",\"value\":\"\",\"required\":false},{\"name\":\"tag\",\"value\":\"{$Job.ExecutionParent.Promotion__r.Release__r.Version__c}\"}]}",
            "copado__CustomType__c": "Function",
            "copado__JobTemplate__c": "a0u7Y00000G1L6pQAF",
            "copado__Order__c": 1,
            "copado__Type__c": "Function",
            "CreatedDate": "2022-02-09T07:53:41.000+0000",
            "Id": "a0t7Y000006byeUQAQ",
            "IsDeleted": false,
            "LastModifiedDate": "2022-02-09T07:53:41.000+0000",
            "Name": "Mule_Deploy",
            "SystemModstamp": "2022-02-09T07:53:41.000+0000"
          }
        ],
        "ObjectType": "copado__JobStep__c"
      }
    ],
    "blobsByUID": {}
  }