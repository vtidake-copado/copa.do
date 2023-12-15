{
    "recordTypeMap": {},
    "RecordSetBundles": [
        {
            "Records": [
                {
                    "attributes": {
                        "type": "copado__Function__c",
                        "url": "/services/data/v52.0/sobjects/copado__Function__c/a0k09000000FKgfAAG"
                    },
                    "copado__API_Name__c": "Devhub_Package_Info",
                    "copado__Description__c": "Extracts package and package versions info from a DevHub",
                    "copado__Image_Name__c": "copado-multicloud-metadata:v1",
                    "copado__Options__c": "[ ]",
                    "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"PACKAGE\"\n}, {\n  \"required\" : true,\n  \"name\" : \"SESSION\",\n  \"defaultValue\" : \"{$Source.Credential.SessionId}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"BASEURL\",\n  \"defaultValue\" : \"{$Source.Credential.Endpoint}\"\n} ]",
                    "copado__Script__c": "#!/usr/bin/env node\n\nconst execSync = require(\"child_process\").execSync;\n\nconst url = process.env['BASEURL'];\nconst baseurl = url.substring(0, url.indexOf(\"/\", url.indexOf(\"/\") + 2));\nconst session = process.env['SESSION'];\nconst pkgnameorId = process.env['PACKAGE'];\n\nlet resultObj = '\\'No results found\\'';\n\nconst setup = `\n\tcopado -p 'Setting instance url'\n    sfdx force:config:set instanceUrl=${baseurl} --global\n    \n    copado -p 'Creating Temp Project'\n    sfdx force:project:create -n temp\n    \n    copado -p 'Getting Package Info'\n`;\nexecSync(setup);\n\nconst listPackages = `    \n    cd temp\n    sfdx force:package:list -v ${session} --json\n`;\nconst packages = JSON.parse(execSync(listPackages).toString());\nconst pkg = packages.result.find(\n  (element) => element.Name == pkgnameorId || element.Id == pkgnameorId\n);\n\nif(pkg) {\n  const listVersions = `\n      cd temp\n      sfdx force:package:version:list -v ${session} -p ${pkg.Id} --json\n  `;\n\n  const versions = JSON.parse(execSync(listVersions).toString());\n\n  resultObj = JSON.stringify({ pkg: pkg, versions: versions.result });\n}\n\nconst result = `\n\tcopado -p 'Updating Results' -r '${resultObj}'\n`;\nexecSync(result);",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": "1.0",
                    "copado__Worker_Size__c": "S",
                    "CreatedDate": "2021-09-16T15:20:01.000+0000",
                    "Id": "a0k09000000FKgfAAG",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-09-28T13:50:51.000+0000",
                    "LastReferencedDate": "2021-09-29T14:36:54.000+0000",
                    "LastViewedDate": "2021-09-29T14:36:54.000+0000",
                    "Name": "Devhub Package Info",
                    "SystemModstamp": "2021-09-28T13:50:51.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__Function__c",
                        "url": "/services/data/v53.0/sobjects/copado__Function__c/a0k09000000FKggAAG"
                    },
                    "copado__API_Name__c": "sfdx_install_package",
                    "copado__Callback_Type__c": "Flow",
                    "copado__FlowHandler__c": "cmcSf.Installed_Package_Callback",
                    "copado__Image_Name__c": "copado-multicloud-metadata:v1",
                    "copado__Options__c": "[ ]",
                    "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"PACKAGES\"\n}, {\n  \"required\" : true,\n  \"name\" : \"BASEURL\",\n  \"defaultValue\" : \"{$Destination.Credential.Endpoint}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"SESSION\",\n  \"defaultValue\" : \"{$Destination.Credential.SessionId}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"WAIT\",\n  \"defaultValue\" : \"200\"\n} ]",
                    "copado__Script__c": "#!/usr/bin/env node\n\nconst execSync = require(\"child_process\").execSync;\n\nconst packages = JSON.parse(process.env['PACKAGES']);\nconst url = process.env['BASEURL'];\nconst baseurl = url.substring(0, url.indexOf(\"/\", url.indexOf(\"/\") + 2));\nconst session = process.env['SESSION'];\nconst wait = process.env['WAIT'];\n\nlet subscriberIds = [];\n\n\nconst setUrl = `\n\tcopado -p 'Setting instance url'\n    sfdx force:config:set instanceUrl=${baseurl} --global\n`;\nexecSync(setUrl);\n\nfor (const package of packages) {\n\tif(package.id) {\n    \tlet params = `-u ${session} -p ${package.id} -w ${wait}`;\n    \tparams = package.key ? `${params} -k ${package.key}` : params;\n        \n        const installPackage = ` \n        \tcopado -p 'Installing package '${package.id}\n            sfdx force:package:install ${params}\n            copado -p 'Package '${package.id}' Installed correctly'\n        `;\n        \n\t\texecSync(installPackage);\n        \n        subscriberIds.push(package.id);\n    }\n}\n\nconst result = `\n\tcopado -p 'Updating Results' -r ${subscriberIds}\n`;\n\nexecSync(result);",
                    "copado__Timeout__c": 200,
                    "copado__Type__c": "Standard",
                    "copado__Version__c": "1.0",
                    "copado__Worker_Size__c": "S",
                    "CreatedDate": "2021-09-16T15:20:01.000+0000",
                    "Id": "a0k09000000FKggAAG",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-11-10T21:47:38.000+0000",
                    "LastReferencedDate": "2021-11-10T21:47:38.000+0000",
                    "LastViewedDate": "2021-11-10T21:47:38.000+0000",
                    "Name": "Sfdx Install Package",
                    "SystemModstamp": "2021-11-10T21:47:38.000+0000"
                },
                {
                    "attributes": {
                      "type": "copado__Function__c",
                      "url": "/services/data/v54.0/sobjects/copado__Function__c/a1t5f0000011DA6AAM"
                    },
                    "copado__API_Name__c": "sfdx_deploy",
                    "copado__Description__c": "Deploys promotion branch",
                    "copado__Image_Name__c": "copado-multicloud-dx:v3",
                    "copado__Options__c": "[ ]",
                    "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"file_changes_id\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.fileWithSelectedChanges}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"promotion\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.promotionBranchName}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"target_branch\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.destinationBranchName}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"destination_instance_url\",\n  \"defaultValue\" : \"{$Destination.Credential.Endpoint}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"destination_sessionid\",\n  \"defaultValue\" : \"{$Destination.Credential.SessionId}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"git_json\",\n  \"defaultValue\" : \"{$Context.Repository.Credential}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"destination_env\",\n  \"defaultValue\" : \"{$Destination.apex.EnvironmentVariables}\"\n}, {\n  \"name\" : \"find_and_replace_rules\",\n  \"defaultValue\" : \"{$Context.apex.GlobalFindAndReplaceDestinationId}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"conflict_resolution_attachments\",\n  \"defaultValue\" : \"{$Context.apex.GetConflictResolutionAttachments}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"deploy_id\",\n  \"defaultValue\" : \"{$Job.ExecutionParent.Id}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"checkonly_flag\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.deploymentDryRun}\"\n}, {\n  \"name\" : \"git_name\",\n  \"defaultValue\" : \"{$User.Name}\"\n}, {\n  \"name\" : \"git_email\",\n  \"defaultValue\" : \"{$User.Email}\"\n}, {\n  \"name\" : \"repository_id\",\n  \"defaultValue\" : \"{$Pipeline.Git_Repository__r.Id}\"\n}, {\n  \"name\" : \"test_level\",\n  \"defaultValue\" : \"{$Job.ExecutionParent.Promotion__r.cmcSf__Apex_Test_Level__c}\"\n}, {\n  \"name\" : \"test_classes\",\n  \"defaultValue\" : \"{$Context.apex.cmcSf.GetTestOnlyClasses}\"\n}, {\n  \"name\" : \"debugMode\",\n  \"defaultValue\" : \"{$Job.ExecutionParent.Promotion__r.cmcSf__Debug_Mode__c}\"\n} ]",
                    "copado__Script__c": "#!/usr/bin/env node\n/**\n * Performs deploy of selected user story metadata changes.\n * Returns (If ACTION success) destination branch with merged changes of the user story metadata\n * (If ACTION failed) Returns details with error status on the job execution\n * @param file_changes_id\n * @param promotion\n * @param target_branch\n * @param destination_instance_url\n * @param destination_sessionid\n * @param git_json\n * @param destination_env\n * @param find_and_replace_rules\n * @param conflict_resolution_attachments\n * @param deploy_id\n * @param checkonly_flag\n * @param git_name\n * @param git_email\n * @param repository_id\n * @param test_level\n * @param test_classes\n*/\n\nconst { execSync } = require('child_process'),\n    { writeFileSync, existsSync } = require('fs'),\n    { env, chdir } = require('process'),\n    sourceApiVersion = \"54.0\",\n    encodedChangesFile = 'encoded_changes.json',\n    { destination_sessionid } = env;\n\nlet commitedMetadata = {};\n\n// EXECUTION\n\n(() => {\n    const { debugMode, target_branch } = env;\n    try {\n        copadoPrepareMetadataChangeslList();\n        getPromotionAndConfigureGit();\n        gitMergePromotionToTarget();\n        if(existsSync(`/app/internal_${encodedChangesFile}`)) {\n            addParentMetadataToOriginalChangeList(require(`/app/internal_${encodedChangesFile}`));\n        }\n        if(debugMode === \"true\") {\n            createDebugPromotionBranch();\n        }\n        copadodxPrepareSfdxProject();\n        processMetadata();\n        replaceEnvironmentVariablesAndReplaceYAML();\n        reconcileFullProfile();\n        if(debugMode === \"true\") {\n            pushDebugPromotionBranch();\n        }\n        handleDeployResult(JSON.parse(copadoStartDeployment()));\n\n        if(env.checkonly_flag == \"false\") {   \n            cleanSfdxProjectConfigFiles();\n            pushChangesToRemote(target_branch);\n        }\n    } catch (err) {\n        showError(err.toString());\n    }\n})();\n\n// SCRIPT FUNCTIONS\n\nfunction copadoPrepareMetadataChangeslList() {\n    commitedMetadata.all = require(`/app/${encodedChangesFile}`);\n    commitedMetadata = {\n        ...commitedMetadata, \n       \tadd: commitedMetadata.all.filter(selectedMetadata => selectedMetadata.a.toLowerCase() == \"add\"),\n        delete: commitedMetadata.all.filter(selectedMetadata => selectedMetadata.a.toLowerCase() == \"delete\"),\n        profiles: commitedMetadata.all.filter(selectedMetadata => selectedMetadata.a.toLowerCase() == \"full\" && selectedMetadata.t.toLowerCase() == \"profile\"),\n        getMetadataList(type) {\n            return this[type].map(step => step.t + ':' + step.n).toString(',');\n        }\n    }\n}\n\nfunction getPromotionAndConfigureGit() {\n    const {\n        promotion,\n        git_email,\n        git_name\n    } = env;\n\n        execSync(`\n            sfdx -v\n            # Get Promotion\n            mkdir -p /app/repository \n            cd /app/repository\n            copado --progress \"fetching ${promotion}\"\n            copado-git-get \"${promotion}\" || exit 1\n\n            # Configure Git\n            git config --local user.email \"${git_email}\" || exit 1\n            git config --local user.name \"${git_name}\" || exit 1\n            git config --local diff.renames false || exit 1\n            git config --local merge.renames false || exit 1\n            git config --local status.renames false || exit 1\n\n        `, {\n            stdio: 'inherit'\n        });\n        chdir('/app/repository/');\n}\n\nfunction processMetadata() {\n    execSync(`\n    # Metadata Processor service called\n    copado -p \"Processing metadata\"\n    metadata-processor \"/app/${encodedChangesFile}\" \"/app/repository\" -e || exit 1`, {\n        stdio: 'inherit' \n    })\n}\nfunction addParentMetadataToOriginalChangeList(parentMetadataList) {\n    commitedMetadata.add = commitedMetadata.add.concat(parentMetadataList.filter(change => change.a.toLowerCase() == \"add\"));\n}\n\nfunction copadodxPrepareSfdxProject() {\n    writeFileSync('/app/repository/sfdx-project.json', JSON.stringify(\n    {\n        \"namespace\": \"\",\n        \"packageDirectories\": [{\n            \"path\": \"./\",\n            \"default\": true\n        }],\n        \"sfdcLoginUrl\": \"\",\n        \"sourceApiVersion\": sourceApiVersion\n    }, null, 2));\n}\n\nfunction replaceEnvironmentVariablesAndReplaceYAML() {\n    const {\n        destination_instance_url,\n        destination_env,\n        find_and_replace_rules,\n        promotion\n    } = env;\n\n    execSync(`\n        # Set instance URL within sfdx-config.json\n        sfdx config:set instanceUrl=${destination_instance_url.substring(0, destination_instance_url.indexOf('.com') + 4)}\n\n        # CopadoDX Environment Variables Replace\n        copado -p \"Replacing environment variables, if any\"\n        varreplace '${destination_env}' \"/app/repository\" --out=/app/result.log || exit 1\n\t\tcopado -p \"Applying global find and replace rules, if any\"\n        if [ -z \"${find_and_replace_rules}\" ]\n        then\n            echo \"No yaml file found\"\n        else\n            copado --downloadfiles \"${find_and_replace_rules}\" --downloaddir /tmp/ || exit 1\n\n            # YAML Replace service called, Target Dir:  \"/tmp/Copado\", Path to YML: \"/app/repository/\"\n            yamlreplace \"/tmp/Copado\" \"/app/repository/\" -b \"${promotion}\" || exit 1\n        fi\n    `, {\n        stdio: 'inherit'\n    });\n    \n}\n \nfunction copadoStartDeployment() {\n\tconst addManifest = commitedMetadata.profiles?.concat(commitedMetadata.add).filter(meta => meta != undefined);\n    let manifestCreation = `  \n        copado --progress 'Deploying ${commitedMetadata.getMetadataList('add').substring(0,240)}...'\n        sfdx force:source:manifest:create -m '${addManifest.length ? addManifest.map(step => step.t + \":\" + step.n).toString() : \"\"}'\n    `;\n    commitedMetadata.delete.length && (manifestCreation += `\\nsfdx force:source:manifest:create -m '${commitedMetadata.getMetadataList('delete')}' --manifesttype destroy`);\n\n    execSync(manifestCreation, {\n        stdio: 'inherit'\n    });\n    return execSync(`(${createSfdxDeploy()}) || true`).toString();\n}\n\n// Create SFDX Deploy command w.r.t. to flags\nfunction createSfdxDeploy() {\n    const {\n        test_level,\n        test_classes,\n        checkonly_flag\n    } = env;\n\n    let testRun = test_level.split(' ').join(''),\n        sfdxDeployCommand = \"sfdx force:source:deploy --json\";\n\n    checkonly_flag == 'true' && (sfdxDeployCommand += \" --checkonly\");\n    sfdxDeployCommand += ` --targetusername ${destination_sessionid}`;\n\n    if (testRun) {\n        sfdxDeployCommand += ` -l ${testRun}`;\n        if(testRun === \"RunSpecifiedTests\") {\n            if(JSON.parse(test_classes).length) {\n            \tsfdxDeployCommand +=  ` -r ${JSON.parse(test_classes).map(test => test.substring(0, test.length - 4)).toString(',')}`\n            } else throw \"No Test Classes were selected by the User\";\n        }\n    }\n    sfdxDeployCommand += \" --manifest package.xml\" + (commitedMetadata.delete.length ? \" --postdestructivechanges destructiveChanges.xml -g\" : \"\");\n    console.log(`Deploy command: ${sfdxDeployCommand}`);\n    return `${sfdxDeployCommand} || true`;\n}\n\nfunction handleDeployResult(deployResult) {\n    writeFileSync('/app/repository/DeploymentResult.json', JSON.stringify(deployResult, null, 2));\n    execSync(`copado --uploadfile /app/repository/DeploymentResult.json`, {\n       stdio: 'inherit'\n   });\n      let errorResponse = \"\";\n   const deployResultDetails = deployResult?.result?.details,\n       failedMetadata = deployResultDetails?.componentFailures,\n       warningSuccessMetadata = deployResultDetails?.componentSuccesses,\n       failedTests = deployResultDetails?.runTestResult?.failures,\n       codeCoverageWarnings = deployResultDetails?.runTestResult?.codeCoverageWarnings,\n       filterFailedMedataProblemType = (statusInfo, type) => {\n           return Array.isArray(statusInfo) ? statusInfo.filter(status => status.problemType == type) : (  statusInfo.problemType == type ? [statusInfo] : []);\n       },\n       getFailedMedataErrorMessage = (failedTests) => {\n           return Array.isArray(failedTests) ? failedTests.map(fail => (`${fail.name}-${fail.methodName ? fail.methodName+\"-\" : \"\"}${fail.message}`)).join(\"\\n\") : `${typeof failedTests.name == 'object' ? \"\" : failedTests.name+\"-\"}${failedTests.methodName ? failedTests.methodName+\"-\" : \"\"}${failedTests.message}`;\n       },\n       getFailedDeploymentMessage = (problem) => {\n           return Array.isArray(problem) ? problem.map(fail => fail['componentType'].concat(':', fail['fullName'], ':', fail['problem'])).join(\"\\n\") : problem['componentType'].concat(':', problem['fullName'], ':', problem['problem']).toString()\n       }, \n       populateErrorResponse = (errorMessage) => {\n           const delimeter = \"\\n\";\n           errorResponse = (errorResponse && errorResponse.concat(`${delimeter}`, errorMessage)) || errorResponse.concat(errorMessage);\n       }\n\n   // If any errors or warning, display to progress indicator and fail the job execution\n   if (deployResult.status && deployResult.message)\n       errorResponse = `${deployResult.message}`;\n   if (failedTests) {\n       populateErrorResponse(getFailedMedataErrorMessage(failedTests));\n      }\n   if (codeCoverageWarnings) {\n       populateErrorResponse(getFailedMedataErrorMessage(codeCoverageWarnings));\n   }\n   if (failedMetadata) {\n       const errorMetadata = filterFailedMedataProblemType(failedMetadata, \"Error\");\n       errorMetadata.length && populateErrorResponse(getFailedDeploymentMessage(errorMetadata));\n   }\n   if(warningSuccessMetadata.length) {\n       const warningMetadata = filterFailedMedataProblemType(warningSuccessMetadata, \"Warning\");\n       if(warningMetadata.length) {\n           message = `WARNING deploying Metadata: ${getFailedDeploymentMessage(warningMetadata)}`;\n           execSync(`copado -p \"${message.substring(0,254)}\"`, { stdio: 'inherit' });\n           console.log(message);\n       }\n   }\n   showError(errorResponse.substring(0,131072));\n}\nfunction showError(errorResponse) {\n    errorResponse && execSync(`copado -p \"Error\" -e \"${errorResponse}\" && exit 1`, {\n        stdio: 'inherit'\n    });\n}\nfunction cleanSfdxProjectConfigFiles() {\n    const cleanUp = `\n        git reset --hard\n        copado -p \"Cleanup config files\"\n        rm -rf .sfdx sfdx-project.json package.xml destructiveChanges.xml\n    `;\n    execSync(cleanUp, {\n        stdio: 'inherit'\n    });\n}\n\nfunction gitMergePromotionToTarget() {\n    const {\n        promotion,\n        target_branch,\n        git_depth\n    } = env;\n\n    writeFileSync('/app/repository/.gitignore', ` \n    .sfdx/\n    .cache/\n    .ssh/\n    vlocity_build/\n    .gitignore\n    sfdx-project.json\n    package.xml\n    destructiveChanges.xml`);\n\n    let readyToMerge = `\n        git reset --hard || exit 1\n        copado --progress \"merging ${promotion} into ${target_branch}\"\n        copado-git-get --depth ${git_depth ? git_depth : 100} \"${target_branch}\" || exit 1\n        git merge \"${promotion}\"  --no-commit -Xignore-space-change || true\n    `;\n    execSync(readyToMerge, {\n        stdio: 'inherit'\n    });\n\n    evaluateMergeStatus();\n    commitGit(`Merging ${promotion} into ${target_branch} after auto conflict resolution`);\n}\n\nfunction commitGit(commitMessage) {\n    execSync(`           \n        git add . # add all the resolved changes, if any \n        git commit -am \"${commitMessage}\" || true`, {\n        stdio: 'inherit'\n    });\n}\n\nfunction evaluateMergeStatus() {\n    const { target_branch, promotion } = process.env,\n        gitStatus = execSync('git status --porcelain=v1 -uno').toString(),\n        porcelainStatus = gitStatus.split('\\n').map(str => str.split(' ')?.[0]),\n        isConflict = porcelainStatus.length ? ['AA', 'UU', 'DD', 'UA', 'UD', 'DU', 'AU'].some(s => porcelainStatus.includes(s)) : false;\n    let infoMessage;\n\n    if(isConflict)\n        showError(`Changes detected in target branch '${target_branch}' after promotion branch '${promotion}' was created, please recreate promotion branch out of the new target branch state.`);\n    else if(!gitStatus) {\n        infoMessage = 'Already up to date';\n    }\n    else {\n        infoMessage = `Changes detected in target branch '${target_branch}' after promotion branch '${promotion}' was created.`;\n       \n    }\n    infoMessage && execSync(`copado -p \"${infoMessage}\"`, {\n        stdio: 'inherit'\n    });\n    console.log(infoMessage);\n}\n\nfunction reconcileFullProfile() {\n     if(commitedMetadata.profiles.length){\n        const reconciledProfileOutput = execSync(`\n        \t\tcopado -p \"Reconciling full profile\"\n                sfdx sfpowerkit:source:profile:reconcile -u \"${destination_sessionid}\" -n \"${commitedMetadata.profiles.map(step => step.n).toString(',')}\" --json || exit 1\n        `);\n        reconciledProfileOutput?.status && reconciledProfileOutput?.message && execSync(`copado -p 'Error' -e \"${reconciledProfileOutput.commandName + \": \" + reconciledProfileOutput.message }\" && exit 1`);\n    }\n}\n\nfunction pushChangesToRemote(remoteBranchName, shouldExit) {\n    execSync(`git push origin \"${remoteBranchName}\" --atomic || ( copado -p 'Could not push the changes to ${remoteBranchName}. Please check the logs for details' ${shouldExit ? ' && exit 1' : ''})`, {\n        stdio: 'inherit'\n    });\n}\n\nfunction createDebugPromotionBranch() {\n\tconst { promotion } = env;\n    execSync(`\n    copado --progress \"Fetching/creating copadoDebug/${promotion.split('/')[1]}\"\n    copado-git-get -c \"copadoDebug/${promotion.split('/')[1]}\" || true` , { stdio: 'inherit' });\n}\n\nfunction pushDebugPromotionBranch() {\n\tconst { promotion } = env;\n    execSync(`\n        copado -p \"Pushing changes to copadoDebug/${promotion.split('/')[1]} branch\"`\n        , { stdio: 'inherit' } );\n    commitGit(`Copado Debug Branch Commit for Promotion ${promotion.split('/')[1]}`);\n    pushChangesToRemote(`copadoDebug/${promotion.split('/')[1]}`, false);      \n}",
                    "copado__Timeout__c": 120,
                    "copado__Type__c": "Standard",
                    "copado__Worker_Size__c": "L",
                    "Id": "a1t5f0000011DA6AAM",
                    "LastReferencedDate": "2022-06-07T13:03:52.000+0000",
                    "LastViewedDate": "2022-06-07T13:03:52.000+0000",
                    "Name": "Deploy"
                },
                {
                    "attributes": {
                      "type": "copado__Function__c",
                      "url": "/services/data/v54.0/sobjects/copado__Function__c/a0l7Q000000MDYwQAO"
                    },
                    "copado__API_Name__c": "sfdx_commit",
                    "copado__Description__c": "Performs git commit on user stories",
                    "copado__Image_Name__c": "copado-multicloud-dx:v3",
                    "copado__Options__c": "[ ]",
                    "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"file_changes_id\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.fileWithSelectedChanges}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"file_name\",\n  \"defaultValue\" : \"Copado Commit changes.json\"\n}, {\n  \"required\" : true,\n  \"name\" : \"source_sessionid\",\n  \"defaultValue\" : \"{$Source.Credential.SessionId}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"source_endpoint\",\n  \"defaultValue\" : \"{$Source.Credential.Endpoint}\"\n}, {\n  \"name\" : \"namespace\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"source_path\",\n  \"defaultValue\" : \"force-app\"\n}, {\n  \"required\" : true,\n  \"name\" : \"git_json\",\n  \"defaultValue\" : \"{$Context.Repository.Credential}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"base_branch\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.baseBranch}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"source_env\",\n  \"defaultValue\" : \"{$Source.apex.EnvironmentVariables}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"find_and_replace_rules\",\n  \"defaultValue\" : \"{$Context.apex.GlobalFindAndReplaceSourceId}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"feature_branch\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.featureBranchName}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"recreate_if_exists\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.recreateFeatureBranch}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"commit_message\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.message}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"git_email\",\n  \"defaultValue\" : \"{$User.Email}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"git_name\",\n  \"defaultValue\" : \"{$User.Name}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"source_environment_branch\",\n  \"defaultValue\" : \"{$Context.apex.SourceEnvironmentBranch}\"\n} ]",
                    "copado__Script__c": "#!/usr/bin/env node\n/**\n * Performs commit of selected user story metadata changes.\n * Returns (If ACTION success) new feature branch in user repo with all the changes and returns the commit id in the result record\n * (If ACTION failed) Returns details with error status on user story commit record\n * @param file_changes_id\n * @param file_name\n * @param source_sessionid\n * @param source_endpoint\n * @param namespace\n * @param source_path\n * @param git_json\n * @param base_branch\n * @param source_env\n * @param find_and_replace_rules\n * @param feature_branch\n * @param recreate_if_exists\n * @param commit_message\n * @param git_email\n * @param git_name\n * @param source_environment_branch\n*/\nconst { execSync, exec } = require('child_process'),\n    fs = require('fs'),\n    process = require('process'),\n    sourceApiVersion = \"54.0\";\n\nconst { feature_branch, source_sessionid } = process.env;\nlet commitChanges = {};\n\n// EXECUTION\n\n(() => {\n    try {\n        encodeFileNames();\n        fetchCreateBranch();\n        prepareMetadataChangesList();\n    \n        if(commitChanges.add.length > 0 || commitChanges.profiles.length > 0) { \n          Promise.all(retrieveOrgMetadata()).then(() => {\n          cleanSfdxProjectConfigFiles();\n          varReplace();\n          findAndReplace();\n          processMetadata();\n          commitAndUpdateEnvironmentBranches();\n          }).catch((err) => {\n                execSync(`copado -p \"Error\" -e \"${err.toString()}\"`);\n                process.exitCode = 1;\n          });\n        } else {\n          processMetadata();\n          commitAndUpdateEnvironmentBranches();\n        }\n    } catch(err) {\n        execSync(`copado -p \"Error\" -e \"${err.toString()}\"`);\n        process.exitCode = 1;\n    }\n})();\n\n// SCRIPT FUNCTIONS\n\nfunction encodeFileNames() {\n    const { file_name, file_changes_id } = process.env;\n    const downloadCommitChangesJson = `copado --downloadfiles ${file_changes_id} --downloaddir /tmp/`;\n\texecSync(downloadCommitChangesJson);\n    committedMetadata = require(`/tmp/${file_name}`);\n\n    for (let commitChange of committedMetadata) { \n        switch (commitChange.t) {\n            case 'DashboardFolder':\n            case 'ReportFolder':\n            case 'Document':\n                commitChange.n = commitChange.n.replace(/%2F/gi, '/');\n                break;\n\n            case 'EmailTemplate':\n                commitChange.n = commitChange.n.replace(/%24/gi, '$').replace(/%2F/gi, '/');\n                break;\n \n            case 'Layout':\n                const regExp = '(?:([a-zA-Z_][a-zA-Z0-9_]{0,14}?(?!__c-))__)?([^-]+)-(?:([a-zA-Z_][a-zA-Z0-9_]{0,14}?_?(?!__c$))__)?(.+)\\n?';\n                /*\n                    The above regExp divides the layout full name into 4 groups:\n                    1. customobject namespace\n                    2. customobject name\n                    3. layout namespace\n                    4. layout mame\n                    The match function returns these groups respectively in the indices 1,2,3,4\n                */\n               const layoutFullName = commitChange.n.match(regExp);\n                let layoutName = layoutFullName[4].replace(/_{2}(?!c)/g, (match) => {return match.replace(/_/gi,'%5F') });\n                commitChange.n = `${layoutFullName[1] ? layoutFullName[1] + \"__\" : \"\"}${layoutFullName[2]}-${layoutFullName[3] ? layoutFullName[3] + \"__\" : \"\"}${layoutName}`;\n                break;\n        }\n\t}\n    fs.writeFileSync('/app/encoded_changes.json', JSON.stringify(committedMetadata));\n    return committedMetadata;\n}\n\nfunction prepareMetadataChangesList() {\n    commitChanges.all = require('/app/encoded_changes.json');\n    commitChanges = { ...commitChanges,\n      add: commitChanges.all.filter(selectedMetadata => selectedMetadata.a.toLowerCase() == \"retrieveonly\" || selectedMetadata.a.toLowerCase() == \"add\"),\n      delete: commitChanges.all.filter(selectedMetadata => selectedMetadata.a.toLowerCase() == \"delete\"),\n      profiles: commitChanges.all.filter(selectedMetadata => selectedMetadata.a.toLowerCase() == \"full\" && selectedMetadata.t.toLowerCase() == \"profile\"),\n      getMetadataList(type) {     \n        return this[type].map(step => step.t + ':' + step.n).toString(',');\n      }\n\t};\n}\n\n\nfunction setup() {\n    const { source_endpoint } = process.env;\n    const baseUrl = source_endpoint.substring(0, source_endpoint.indexOf('/', source_endpoint.indexOf('/') + 2));\n    const createSfdxProject = `\n    copado -p \"Preparing sfdx project configuration\"\n    cd /app\n    mkdir -p /app/retrieve\n    cd /app/retrieve\n    mkdir -p \"force-app\"\n    `;\n    execSync(createSfdxProject);\n\n    // creating sfdx project.json\n    fs.writeFileSync('/app/retrieve/sfdx-project.json', JSON.stringify({\n        \"namespace\": \"\",\n        \"packageDirectories\": [\n            {\n            \"path\": \"force-app\",\n            \"default\": true\n            }\n        ],\n        \"sfdcLoginUrl\": \"\",\n        \"sourceApiVersion\": sourceApiVersion\n    }));\n    const configSet = `\n    cd /app/retrieve\n    sfdx config:set instanceUrl=${baseUrl}`;\n    execSync(configSet, { stdio: 'inherit' });\n}\n\nfunction sfdxRetrieve(resolve, reject) {\n\n    const retrieve = `\n        cd /app/retrieve\n        sfdx force:source:retrieve --json -u \"${source_sessionid}\" -m \"${commitChanges.getMetadataList('add')}\" || true\n    `;\n    exec(retrieve, (err, retrieveResult, stderr) => {\n\n        // Adding the retrive result to the logs\n        console.log(retrieveResult);\n\n        retrieveResult.status && retrieveResult.message && execSync(`copado -p \"Error\" -e \"${retrieveResult.message}\" && exit 1`, { stdio: 'inherit' });\n        \n        const failedMetadataList = JSON.parse(retrieveResult.toString())?.result?.inboundFiles.filter(file => file.state == 'Failed');\n        if(failedMetadataList.length) \n        {\t\n            const setError = `\n            copado -p \"Error\" -e \"Error retrieving metadata: ${failedMetadataList.map(metadata => metadata.error).toString()}\" && exit 1`\n            execSync(setError, { stdio: 'inherit' });\n        }\n        resolve(retrieveResult);\n    });\n}\n\nfunction cleanSfdxProjectConfigFiles() {\n    const teardown =  `\n    copado -p \"Cleanup config files\"\n    rm -rf .sfdx sfdx-project.json\n    cd ..\n    `\n    execSync(teardown);\n}\nfunction retrieveFullProfile(resolve, reject) {\n\t\n    \tconst retrieveFullProfile = `\n        cd /app/retrieve\n        sfdx sfpowerkit:source:profile:retrieve -u \"${source_sessionid}\" -n \"${commitChanges.profiles.map(profile => profile.n).toString()}\" \n        `\n        exec(retrieveFullProfile, { stdio: 'inherit' }, (err, profileResult, stderr) => {\n    \t\tif(err) {\n                console.log(profileResult);\n            \treject(\"Full Profile Retrieval Failed\");\n            } else {\n        \t\tresolve();\n            }\n        });\n}\nfunction retrieveOrgMetadata() {\n\n    setup();\n    const setProgress = `\n    copado -p \"Retrieving the selected metadata\"`\n    execSync(setProgress, { stdio: 'inherit' });\n    const promises = [];\n    commitChanges.profiles.length && promises.push( new Promise((resolve, reject) => {\n        retrieveFullProfile(resolve, reject);\n    }));\n    commitChanges.add.length && promises.push(new Promise((resolve, reject) => {\n        sfdxRetrieve(resolve, reject);\n    }));\n    return promises;\n}\n\nfunction varReplace() {\n\t\n    const { source_env } = process.env,\n\t    targetDirectory = \"/app/retrieve/force-app/main/default\",\n        varreplace = `varreplace '${source_env}' '${targetDirectory}' --valuename=true || exit 1`;\n    execSync(varreplace, {stdio: 'inherit'});\n}\n\nfunction fetchCreateBranch() {\n    const { recreate_if_exists, base_branch } = process.env,\n        fetchCreateBranch = `\n    mkdir -p /app/repository && cd /app/repository\n\n    copado -p \"Fetching Git branches: ${feature_branch}\"\n    copado-git-get --depth \"100\" \"${base_branch}\" || exit 1\n    if [ -n \"${feature_branch}\" ]; then\n      if [ \"${recreate_if_exists}\" == \"true\" ]; then\n        copado -p \"Removing branch ${feature_branch}\"\n        git branch -D \"${feature_branch}\" || true\n        git push origin --delete \"${feature_branch}\" || true\n      fi\n        copado -p \"Fetching/creating branch ${feature_branch}\"\n        copado-git-get -c \"${feature_branch}\"\n    fi\n    `\n    execSync(fetchCreateBranch);\n}\n\nfunction findAndReplace() {\n    const { find_and_replace_rules } = process.env,\n        targetDirectory = \"/app/retrieve/\",\n        pathToYaml = \"/tmp/Copado\";\n    if(find_and_replace_rules) {\n        const findAndReplace = `\n        copado --downloadfiles \"${find_and_replace_rules}\" --downloaddir /tmp/\n        yamlreplace \"${pathToYaml}\" \"${targetDirectory}\" -b \"${feature_branch}\" || exit 1` \n        execSync(findAndReplace);\n    }\n}\n\nfunction processMetadata() {\n    const retrievePath = \"/app/retrieve\",\n        gitRepoPath = \"/app/repository\",\n        commitChangesFilePath = \"/app/encoded_changes.json\",\n        metadataProcessor = `\n        cd /app/repository\n        retrievePath=\"/app/retrieve\"\n        metadata-processor \"${commitChangesFilePath}\" ${retrievePath} ${gitRepoPath} -cc -e || exit 1\n        `\n    execSync(metadataProcessor);\n}\n\nfunction commitAndUpdateEnvironmentBranches() {\n    const { git_email,  git_name, commit_message, source_environment_branch} =  process.env,\n        configureGit = `\n    \tcd /app/repository\n        git config --local user.email \"${git_email}\" || exit 1\n        git config --local user.name \"${git_name}\" || exit 1\n        git config --local diff.renames false || exit 1\n        git config --local merge.renames false || exit 1\n        git config --local status.renames false || exit 1\n        `;\n        execSync(`${configureGit}`);\n\n    const gitStatus = execSync(`\n    cd /app/repository\n    git status --porcelain`).toString();\n    if(!gitStatus) {\n        execSync(`copado -p \"There are no changes to be committed\" -r '{ \"status\" : \"No Changes\" }' && exit 0`, { stdio: 'inherit' });\n    }\n    else {\n        const  gitCommit = `\n        copado -p \"Committing ${commit_message}\"\n        cd /app/repository\n        git add .\n        git status\n        git commit -m \"${commit_message}\" || ( copado -p \"Error\" -e \"There was some issue when committing metadata\" && exit 1 )\n        `,\n        gitPush = `\n        cd /app/repository\n        copado -p \"Pushing all changes\"\n        git status\n        git push origin \"${feature_branch}\" --atomic || ( copado -p \"Error\" --error-message \"Could not push the changes. Please check the logs for details\" && \texit 1 )\n        commit_id=$(git rev-parse HEAD)\n        resultdata='{ \"commitId\": \"'$commit_id'\" }'\n        copado -p \"Saving commit id\" --result-data \"$resultdata\"  || echo \"The command of saving commit id failed to execute\"\n        `,\n        updateSourceBranch = `\n        copado -p \"Merging changes to source branch - $source_environment_branch\"\n        copado-git-get \"$source_environment_branch\"\n        git merge \"$feature_branch\" -Xignore-space-change || true\n        \n        copado -p \"Resolving git conflicts, if any\"\n        git status --porcelain=v1 > /tmp/git_status.txt\n        touch /tmp/output.json\n\n        copado-merge /app/repository '/app/encoded_changes.json' -p /tmp/git_status.txt -t sfdx -c --out /tmp || exit 1\n\n        online_conflict_resolution=$(jq \".actionKeyListMap.ONLINE_CONFLICT_RESOLUTION | length > 0\" /tmp/output.json)\n\n        if [[ $online_conflict_resolution == 'true' ]]; then\n            # In commit process should auto-resolve all files while merging feature branch into source environment branch\n            copado -p \"Conflict found while merging ${feature_branch} into ${source_environment_branch}. Conflict needs to be resolved manually.\" -r '{\"status\": \"conflicts\"}'\n            exit 1\n        else\n            git add . # add all the resolved changes, if any\n            git commit -am \"Merging $feature_branch into $source_environment_branch after auto conflict resolution\" || true\n        fi\n        git push origin \"$source_environment_branch\" --atomic || ( copado -p \"Error\" --error-message \"Could not push the changes in source branch. Please check the logs for details\" && \texit 1 )\n        `;\n    \n        execSync(`\n        ${gitCommit}\\n\n        ${gitPush}\n        ${updateSourceBranch}`);\n    }\n}",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": "1",
                    "copado__Worker_Size__c": "S",
                    "Id": "a0l7Q000000MDYwQAO",
                    "LastReferencedDate": "2022-05-10T06:56:31.000+0000",
                    "LastViewedDate": "2022-05-10T06:56:31.000+0000",
                    "Name": "Commit"
                },
                {
                    "attributes": {
                      "type": "copado__Function__c",
                      "url": "/services/data/v54.0/sobjects/copado__Function__c/a0l7Q000000MDYxQAO"
                    },
                    "copado__API_Name__c": "sfdx_promote",
                    "copado__Description__c": "Creation of Promotion Branch and Promotion of user stories",
                    "copado__Image_Name__c": "copado-multicloud-dx:v3",
                    "copado__Options__c": "[ ]",
                    "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"user_stories\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.userStoryBranches}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"promotion_branch\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.promotionBranchName}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"target_branch\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.destinationBranchName}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"tag\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.Promotion__r.Release__r.Version__c}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"git_json\",\n  \"defaultValue\" : \"{$Context.Repository.Credential}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"recreate_if_exists\",\n  \"defaultValue\" : \"true\"\n}, {\n  \"name\" : \"promotion_id\",\n  \"defaultValue\" : \"{$Job.ExecutionParent.Id}\"\n}, {\n  \"name\" : \"file_changes_id\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.fileWithSelectedChanges}\"\n}, {\n  \"name\" : \"conflict_resolution_attachments\",\n  \"defaultValue\" : \"{$Context.apex.GetConflictResolutionAttachments}\"\n}, {\n  \"name\" : \"git_name\",\n  \"defaultValue\" : \"{$User.Name}\"\n}, {\n  \"name\" : \"git_email\",\n  \"defaultValue\" : \"{$User.Email}\"\n}, {\n  \"name\" : \"repository_id\",\n  \"defaultValue\" : \"{$Pipeline.Git_Repository__r.Id}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"git_depth\",\n  \"defaultValue\" : \"100\"\n} ]",
                    "copado__Script__c": "#!/usr/bin/env node\n/**\n * Performs promotion of selected user story metadata changes.\n * Returns (If ACTION success) new peomotion branch in user repo with all the changes\n * (If ACTION failed) Returns details with conflict or error status on promotion record\n * @param user_stories\n * @param promotion_branch\n * @param target_branch\n * @param tag\n * @param recreate_if_exists\n * @param promotion_id\n * @param file_changes_id\n * @param conflict_resolution_attachments\n * @param git_name\n * @param git_email\n * @param repository_id\n * @param git_depth\n*/\n\nconst execSync = require('child_process').execSync,\n    fs = require('fs'),\n    process = require('process');\n\nconst {\n        file_changes_id,\n        target_branch,\n        promotion_branch,\n        git_depth,\n        git_email,\n        git_name,\n        promotion_id,\n        repository_id,\n        conflict_resolution_attachments,\n        user_stories,\n        tag,\n        recreate_if_exists\n    } = process.env; \n\nfunction coreGitFetchCreate(){\n    \n    fs.writeFileSync('./.gitignore', ` \n        .sfdx/\n        .cache/\n        .ssh/\n        vlocity_build/\n        .gitignore\n        sfdx-project.json\n        package.xml\n        destructiveChanges.xml`);\n    let dirSetupCommand = `\n        rm -rf /app/repository\n        mkdir /app/repository\n    `\n    execSync(dirSetupCommand, {\n        stdio: 'inherit'\n    });\n    process.chdir('/app/repository/');\n\n    let command = `\n        copado --downloadfiles \"${file_changes_id}\" --downloaddir /tmp/\n        copado -p \"Fetching Git branches: ${target_branch} ${promotion_branch}\"\n        copado-git-get --depth \"${git_depth ? git_depth : 100}\" \"${target_branch}\" || exit 1\n        if [ -n \"${promotion_branch}\" ]; then\n         \techo recreate_if_exists: ${recreate_if_exists}\n            if [ ${recreate_if_exists} ]; then\n            exists=$(git ls-remote --heads origin ${promotion_branch} | wc -l)\n                if [ -n \"$exists\" ]; then\n                    copado -p \"Removing branch ${promotion_branch}\"\n                    git push origin --delete \"${promotion_branch}\" || true\n                fi\n            fi\n            copado -p \"Fetching/creating branch ${promotion_branch}\"\n            copado-git-get -c \"${promotion_branch}\" || exit 1\n        fi\n    `\n\n    execSync(command, {\n        stdio: 'inherit'\n    });\n}\nfunction copado_configure_git(){\n    execSync(`\n        git config --local user.email \"${git_email}\" || exit 1\n        git config --local user.name \"${git_name}\" || exit 1\n        git config --local diff.renames false || exit 1\n        git config --local merge.renames false || exit 1\n        git config --local status.renames false || exit 1\n    `, {\n        stdio: 'inherit'\n    });\n}\n\nfunction core_git_promotion() {\n   for(let story of JSON.parse(user_stories)){\n        let user_story_name = story.split('/')[1];\n        console.log(user_story_name);\n        execSync(`\n            copado -p \"Merging ${story} into ${promotion_branch}\"\n            copado-git-get --depth \"${git_depth ? git_depth : 100}\" \"${story}\" || exit 1\n            git checkout \"${promotion_branch}\"\n            git merge -m \"Merging ${story} to ${promotion_branch}\" \"${story}\" -Xignore-space-change || true\n            copado -p \"Resolving git conflicts, if any\"\n            git status --porcelain=v1 > /tmp/git_status.txt\n       \t\techo \"${JSON.stringify(conflict_resolution_attachments)}\" > /tmp/solvedByUser.json\n\t\t\ttouch /tmp/output.json\n    \n\t\t\tcopado-merge /app/repository '/tmp/Copado Promotion changes.json' -p /tmp/git_status.txt -r /tmp/solvedByUser.json -u ${user_story_name} -t sfdx -cp ${promotion_id} -rp ${repository_id} --out /tmp || exit 1\n\n     \t\tonline_conflict_resolution=$(jq \".actionKeyListMap.ONLINE_CONFLICT_RESOLUTION | length > 0\" /tmp/output.json)\n       \n         if [[ $online_conflict_resolution == 'true' ]]; then\n           copado -p \"Conflict found while merging ${story} to $promotion_branch. Conflict needs to be resolved manually.\" -r '{\"status\": \"conflicts\"}'\n           exit 1\n         else\n           git add . || exit 1\n           git commit -am \"Merging ${story} to ${promotion_branch} after auto conflict resolution\" || true\n         fi\n        `, {\n            stdio: 'inherit'\n        });\n    }\n}\n\nfunction core_git_push(){\n    execSync(`\n        copado -p \"Pushing all changes\"        \n        if [ -n \"${tag}\" ]; then\n            git tag \"${tag}\"\n            git push --all --atomic || ( copado -p \"Error\" -e \"Could not push the changes. Please check the logs for details\" && exit 1 )\n        else\n            echo \"not tag specified\"\n            git push origin \"${promotion_branch}\" --atomic || ( copado -p \"Error\" -e \"Could not push the changes. Please check the logs for details\" && exit 1 )\n        fi\n    `, {\n        stdio: 'inherit'\n    });\n}\ntry{\n    coreGitFetchCreate();\n    copado_configure_git();\n    core_git_promotion();\n    core_git_push();\n} catch (err) {\n    execSync(`copado -p 'Error' -e \"${err.toString()}\" && exit 1`);\n}",
                    "copado__Type__c": "Standard",
                    "copado__Worker_Size__c": "S",
                    "Id": "a0l7Q000000MDYxQAO",
                    "LastReferencedDate": "2022-05-10T06:56:31.000+0000",
                    "LastViewedDate": "2022-05-10T06:56:31.000+0000",
                    "Name": "Promote"
                },
                {
                    "attributes": {
                        "type": "copado__Function__c",
                        "url": "/services/data/v54.0/sobjects/copado__Function__c/a1t5f00000121TGAAY"
                    },
                    "copado__API_Name__c": "sfdx_encode_file_names",
                    "copado__Image_Name__c": "copado-multicloud-dx:v3",
                    "copado__Options__c": "[ ]",
                    "copado__Parameters__c": "[ {\n  \"name\" : \"file_changes_id\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.fileWithSelectedChanges}\"\n}, {\n  \"name\" : \"file_name\",\n  \"defaultValue\" : \"Copado Deploy changes.json\"\n} ]",
                    "copado__Script__c": "#!/usr/bin/env node\nconst execSync = require('child_process').execSync,\n\t{ file_name, file_changes_id } = process.env,\n    fs = require('fs');\n    \n\tconst downloadCommitChangesJson = `copado --downloadfiles ${file_changes_id} --downloaddir /tmp/`;\n\texecSync(downloadCommitChangesJson);\n\n    const committedMetadata = require(`/tmp/${file_name}`);\n\n    console.log(committedMetadata);\n    for (let commitChange of committedMetadata) { \n        switch (commitChange.t) {\n            case 'DashboardFolder':\n            case 'ReportFolder':\n            case 'Document':\n                commitChange.n = commitChange.n.replace(/%2F/gi, '/');\n                break;\n\n            case 'EmailTemplate':\n                commitChange.n = commitChange.n.replace(/%24/gi, '$').replace(/%2F/gi, '/');\n                break;\n \n            case 'Layout':\n                const regExp = '(?:([a-zA-Z_][a-zA-Z0-9_]{0,14}?(?!__c-))__)?([^-]+)-(?:([a-zA-Z_][a-zA-Z0-9_]{0,14}?_?(?!__c$))__)?(.+)\\n?';\n                const layoutFullName = commitChange.n.match(regExp);\n                let layoutName = layoutFullName[4].replace(/_{2}(?!c)/g, (match) => {return match.replace(/_/gi,'%5F') });\n                commitChange.n = `${layoutFullName[1] ? layoutFullName[1] + \"__\" : \"\"}${layoutFullName[2]}-${layoutFullName[3] ? layoutFullName[3] + \"__\" : \"\"}${layoutName}`;\n                break;\n        }\n\t}\nfs.writeFileSync('/app/encoded_changes.json', JSON.stringify(committedMetadata));",
                    "copado__Type__c": "Standard",
                    "copado__Worker_Size__c": "S",
                    "Id": "a1t5f00000121TGAAY",
                    "LastReferencedDate": "2022-04-12T13:08:00.000+0000",
                    "LastViewedDate": "2022-04-12T13:08:00.000+0000",
                    "Name": "Encode File Names"
                },
                {
                    "attributes": {
                      "type": "copado__Function__c",
                      "url": "/services/data/v54.0/sobjects/copado__Function__c/a0l7Q000000MDYzQAO"
                    },
                    "copado__API_Name__c": "sfdx_package_version_publish",
                    "copado__Description__c": "To publish the package version",
                    "copado__Image_Name__c": "copado-multicloud-metadata:v1",
                    "copado__Options__c": "[ ]",
                    "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"packageVersionId\",\n  \"defaultValue\" : \"{$Job.PrevStep.Result__r.Result_Data__c}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"SESSION\",\n  \"defaultValue\" : \"{$Destination.Credential.SessionId}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"BASEURL\",\n  \"defaultValue\" : \"{$Destination.Credential.Endpoint}\"\n} ]",
                    "copado__Script__c": "#!/usr/bin/env node\n\nconst { execSync } = require(\"child_process\"),\n    { packageVersionId, BASEURL, SESSION } = process.env,\n    checkLog = \"Please check the logs for details\";\n   \n// EXECUTION\ntry {\n    BASEURL && setInstanceURL();\n    createSFDXProject();\n    handleVersionPromotionResponse(promotePackageVersion());\n    \n    execSync(`copado -p 'Updating Results' -r ${packageVersionId}`);\n} catch (err) {\n    execSync(showError(err.toString()));\n}\n\n// SCRIPT FUNCTIONS\nfunction setInstanceURL() {\n    execSync(`\n        copado -p 'Setting instance url'\n        sfdx force:config:set instanceUrl=${BASEURL.substring(0, BASEURL.indexOf(\"/\", BASEURL.indexOf(\"/\") + 2))} --global || (${showError(`Error setting instance URL, ${checkLog}`)})\n    `);\n}\nfunction showError(error) {\n    return `copado -p 'Error' -e \"${error}\" && exit 1`;\n  }\nfunction createSFDXProject() {\n    execSync(`\n        copado -p 'Creating Temp Project'\n        sfdx force:project:create -n temp || (${showError(`Error creating SFDX project, ${checkLog}`)})\n    `);\n}\nfunction promotePackageVersion() {\n    const promotePackage = ` \n        copado -p 'Promoting package ${packageVersionId}'\n        cd temp\n        sfdx force:package:version:promote -p ${packageVersionId} -v ${SESSION} -n --json || true\n        copado -p 'Package '${packageVersionId}' promoted correctly'\n    `;\n    return JSON.parse(execSync(promotePackage).toString());\n}\n\nfunction handleVersionPromotionResponse(promotionResponse) {\n    promotionResponse.status === 1 && execSync(showError(`${promotionResponse.message}, ${checkLog}`));\n}",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": "1.0",
                    "copado__Worker_Size__c": "S",
                    "Id": "a0l7Q000000MDYzQAO",
                    "LastReferencedDate": "2022-05-10T06:56:31.000+0000",
                    "LastViewedDate": "2022-05-10T06:56:31.000+0000",
                    "Name": "Sfdx Package Version Publish"
                },
                {
                    "attributes": {
                      "type": "copado__Function__c",
                      "url": "/services/data/v54.0/sobjects/copado__Function__c/a0l7Q000000MDZ0QAO"
                    },
                    "copado__API_Name__c": "SFDX_Package_Version_Update",
                    "copado__Description__c": "Updates package version",
                    "copado__Image_Name__c": "copado-multicloud-metadata:v1",
                    "copado__Options__c": "[ ]",
                    "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"SESSION\",\n  \"defaultValue\" : \"{$Context.Credential.SessionId}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"ENDPOINT\",\n  \"defaultValue\" : \"{$Context.Credential.Endpoint}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"subscriberVersionId\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"branch\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"tag\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"installationKey\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"versionName\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"description\",\n  \"defaultValue\" : \"\"\n} ]",
                    "copado__Script__c": "#!/usr/bin/env node\nconst { execSync } = require('child_process'),\n    { ENDPOINT, subscriberVersionId, versionName, description, branch, tag, installationKey, SESSION } = process.env,\n    baseUrl = ENDPOINT.substring(0, ENDPOINT.indexOf('/', ENDPOINT.indexOf('/') + 2)),\n    checkLog = \"Please check the logs for details\";\n\n// EXECUTION\ntry {\n    setInstanceURL();\n    createSFDXProject();\n    handleVersionPromotionResponse(updatePackageVersion());\n\n    execSync(`copado -p 'Updating result' -r '${JSON.stringify({ subscriberVersionId, versionName, description, branch, tag, installationKey })}'`);\n} catch (err) {\n    execSync(showError(err.toString()));\n}\n\n// SCRIPT FUNCTIONS\nfunction getUpdateParams(flags) {\n    return Object.entries(flags).reduce((parameters, [key, value])=>{\n        return parameters + (value ? ` --${key} '${value}'` : '');\n    },'')\n}\n\nfunction setInstanceURL() {\n    execSync(`\n        copado -p 'Setting instance url'\n        sfdx force:config:set instanceUrl=${baseUrl} --global || (${showError(`Error setting instance URL, ${checkLog}`)})\n    `);\n}\n\nfunction createSFDXProject() {\n    execSync(`\n        copado -p 'Creating Temp Project'\n        sfdx force:project:create -n temp || (${showError(`Error creating SFDX project, ${checkLog}`)})\n    `);\n}\n\nfunction showError(error) {\n    return `copado -p 'Error' -e \"${error}\" && exit 1`;\n}\n\nfunction updatePackageVersion() {\n    const updateCmd = `\n        copado -p 'Updating package version'\n        cd temp\n        sfdx force:package:version:update ${getUpdateParams({\n            'targetdevhubusername': SESSION,\n            'package': subscriberVersionId,\n            'versionname': versionName,\n            'versiondescription': description,\n            'branch': branch,\n            'tag': tag,\n            'installationkey': installationKey\n        }).replace(/\\n|\\r/g, '')} --json || true\n    `;\n\n    return JSON.parse(execSync(updateCmd).toString());\n}\n\nfunction handleVersionPromotionResponse(promotionResponse) {\n    promotionResponse.status === 1 && execSync(showError(`Package Version Updated failed. ${promotionResponse.message}, ${checkLog}`));\n}",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": "1",
                    "copado__Worker_Size__c": "S",
                    "Id": "a0l7Q000000MDZ0QAO",
                    "LastReferencedDate": "2022-05-10T06:56:31.000+0000",
                    "LastViewedDate": "2022-05-10T06:56:31.000+0000",
                    "Name": "SFDX Package Version Update"
                },
                {
                    "attributes": {
                      "type": "copado__Function__c",
                      "url": "/services/data/v54.0/sobjects/copado__Function__c/a0l7Q000000MDZ1QAO"
                    },
                    "copado__API_Name__c": "SFDX_Package_Version_Create",
                    "copado__Description__c": "Create a package version record",
                    "copado__Image_Name__c": "copado-multicloud-metadata:v1",
                    "copado__Options__c": "[ ]",
                    "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"ENDPOINT\",\n  \"defaultValue\" : \"{$Destination.Credential.Endpoint}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"SESSION\",\n  \"defaultValue\" : \"{$Destination.Credential.SessionId}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"packageId\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"versionName\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"versionNumber\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"description\",\n  \"defaultValue\" : \"\"\n}, {\n  \"required\" : false,\n  \"name\" : \"jsonInformation\",\n  \"defaultValue\" : \"\"\n}, {\n  \"required\" : true,\n  \"name\" : \"git_json\",\n  \"defaultValue\" : \"{$Context.Repository.Credential}\"\n} ]",
                    "copado__Script__c": "#!/usr/bin/env node\n\nconst fs = require(\"fs\"),\n  execSync = require(\"child_process\").execSync,\n  endPoint = process?.env[\"ENDPOINT\"],\n  session = process?.env[\"SESSION\"],\n  packageId = process?.env[\"packageId\"],\n  params = JSON.parse(\n    process?.env[\"jsonInformation\"].replace(/(\\\\r\\\\n|\\\\r|\\\\n|\\\\)/g, \"\")\n  ),\n  branchName = params?.branch,\n  baseUrl = endPoint?.substring(\n    0,\n    endPoint?.indexOf(\"/\", endPoint?.indexOf(\"/\") + 2)\n  ),\n  tag = params?.tag,\n  checkLog = \"Please check the logs for details\";\n\n// EXECUTION\ntry {\n  fs.mkdirSync(\"sfProject\");\n  process.chdir(\"sfProject\");\n\n  cloneRepo();\n  setInstanceURL();\n  updatePkgVersionCreation(JSON.parse(pkgVersionCreation()));\n} catch (err) {\n  execSync(`${getErrorCmd(err.toString())}`);\n}\n\n// SCRIPT FUNCTIONS\nfunction updatePkgVersionCreation(response) {\n\n  if (response.status === 0) {\n    commit();\n    if (tag) {\n      const remoteTags = execSync(\n        `git ls-remote --tags --refs origin`\n      ).toString(),\n        isTagExist = remoteTags\n          .split(\"\\n\")\n          .map((step) => step.substring(step.lastIndexOf(\"/\") + 1, step.length))\n          .includes(tag);\n\n      createTag(tag, isTagExist);\n    }\n    pushTagAndBranchChanges();\n    setProgressStatus({\n      progressStatus: 'Package version created successfully', resultData: `${JSON.stringify(\n        getLatestVersion(response?.result?.SubscriberPackageVersionId)\n      )}`\n    })\n  } else if (response.status === 1) {\n    setProgressStatus({ progressStatus: 'Package Version creation failed', errorMessage: `Could not create package. ${response.message}` })\n  } else {\n    setProgressStatus({ progressStatus: 'Package version creation did not finish', resultData: `${JSON.stringify(response)}` })\n  }\n}\n\nfunction getLatestVersion(pkgVersionId) {\n  const versionList = execSync(\n    `sfdx force:package:version:list -v ${session} -p ${packageId} --json`\n  ).toString();\n  return JSON.parse(versionList)?.result?.find(\n    (version) => version.SubscriberPackageVersionId === pkgVersionId\n  );\n}\n\nfunction pkgVersionCreation() {\n  return execSync(`\n      copado -p 'Creating package version'\n      sfdx force:package:version:create ${getUpdateParams([\n        { key: 'loglevel', value: params?.loglevel, isString: false },\n        { key: 'targetdevhubusername', value: session, isString: false},\n        { key: 'apiversion', value: params?.apiversion,isString: false},\n        { key: 'package', value: packageId, isString: true},\n        { key: 'path', value: params?.path, isString: true},\n        { key: 'branch', value: branchName, isString: true},\n        { key: 'definitionfile', value: params?.definitionfile, isString: true},\n        { key: 'tag', value: tag, isString: true},\n        { key: 'installationkey', value: params?.installationkey, isString: true},\n        { key: 'installationkeybypass', value: params?.installationkeybypass, isString: false},\n        { key: 'wait', value: 1000, isString: false},\n        { key: 'versionname', value: process.env[\"versionName\"], isString: true},\n        { key: 'versionnumber', value: process?.env[\"versionNumber\"], isString: false},\n        { key: 'versiondescription', value: process?.env[\"description\"], isString: true},\n        { key: 'codecoverage', value: params?.codecoverage, isString: true},\n        { key: 'releasenotesurl', value: params?.releasenotesurl, isString: true},\n        { key: 'postinstallurl', value: params?.postinstallurl, isString: true},\n        { key: 'postinstallscript', value: params?.postinstallscript, isString: true},\n        { key: 'uninstallscript', value: params?.uninstallscript, isString: true},\n        { key: 'skipvalidation', value: params?.skipvalidation, isString: false}\n    ])} --json || true\n  `).toString();\n}\n\nfunction createTag(tag, tagExist) {\n  execSync(\n    `\n        ${tagExist ? `git push --delete origin refs/tags/${tag} || exit 1` : \"\"}\n    `,\n    { stdio: \"inherit\" }\n  );\n\n  execSync(\n    `\n        git tag ${tag} HEAD || exit 1\n    `,\n    { stdio: \"inherit\" }\n  );\n}\n\nfunction commit() {\n  execSync(\n    `\n        git add \"sfdx-project.json\" || exit 1\n        git commit -m \"Committing sfdx-project.json\" || exit 1\n    `,\n    { stdio: \"inherit\" }\n  );\n}\n\nfunction pushTagAndBranchChanges() {\n  execSync(\n    `git push origin ${branchName} && git push origin ${tag} || (${getErrorCmd(\n      `Error pushing changes in git, ${checkLog}`\n    )})`,\n    { stdio: \"inherit\" }\n  );\n}\n\nfunction cloneRepo() {\n  execSync(\n    `\n    copado -p 'Cloning git repository'\n    copado-git-get ${branchName} || (${getErrorCmd(\n      `Error check out branch, ${checkLog}`\n    )})\n  `,\n    { stdio: \"inherit\" }\n  );\n}\n\nfunction setInstanceURL() {\n  execSync(\n    `\n    copado -p 'Setting instance url'\n    sfdx force:config:set instanceUrl=${baseUrl} --global || (${getErrorCmd(\n      `Error setting instance URL, ${checkLog}`\n    )})\n  `,\n    { stdio: \"inherit\" }\n  );\n}\n\nfunction setProgressStatus({ progressStatus, errorMessage, resultData}) {\n  execSync(`copado -p '${progressStatus}' ${errorMessage ? `-e '${errorMessage}'` : ''} ${resultData ? `-r '${resultData}'` : ''}`);\n  if(errorMessage)\n      throw errorMessage;\n}\n\nfunction getErrorCmd(error) {\n  return `copado -p 'Error' -e \"${error}\" && exit 1`;\n}\n\nfunction getUpdateParams(flags) {\n  return flags.reduce((parameters, obj)=>{\n      return parameters + (typeof obj.value == 'boolean' ? (obj.value ? ` --${obj.key}` : \"\" ) : (obj.value ? ( obj.isString ? ` --${obj.key} '${obj.value}'` : ` --${obj.key} ${obj.value}`) : ''));\n  },'')\n}",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": "1",
                    "copado__Worker_Size__c": "S",
                    "Id": "a0l7Q000000MDZ1QAO",
                    "LastReferencedDate": "2022-05-13T13:53:47.000+0000",
                    "LastViewedDate": "2022-05-13T13:53:47.000+0000",
                    "Name": "SFDX Package Version Create"
                },
                {
                    "attributes": {
                        "type": "copado__Function__c",
                        "url": "/services/data/v53.0/sobjects/copado__Function__c/a0k09000000FlLhAAK"
                    },
                    "copado__API_Name__c": "SFDX_Get_Package_Version_Dependencies",
                    "copado__Image_Name__c": "copado-multicloud-metadata:v1",
                    "copado__Options__c": "[ ]",
                    "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"ENDPOINT\",\n  \"defaultValue\" : \"{$Context.Credential.Endpoint}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"SESSION\",\n  \"defaultValue\" : \"{$Context.Credential.SessionId}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"subscriberVersionId\",\n  \"defaultValue\" : \"04t5g000000UgdUAAS\"\n}, {\n  \"name\" : \"installationKey\",\n  \"defaultValue\" : \"\"\n} ]",
                    "copado__Script__c": "#!/usr/bin/env node\nconst execSync = require('child_process').execSync;\n\nconst endPoint = process.env['ENDPOINT'];\nconst session = process.env['SESSION'];\nconst subscriberVersionId = process.env['subscriberVersionId'];\nconst installationKey = process.env['installationKey'];\n\nconst baseUrl = endPoint.substring(0, endPoint.indexOf('/', endPoint.indexOf('/') + 2));\n\nconst setup = `    \n\tcopado -p 'Setting instance url'\n    sfdx force:config:set instanceUrl=${baseUrl} --global\n\tcopado -p 'Getting dependencies'\n`;\n\nexecSync(setup);\n\nconst query = `SELECT Dependencies FROM SubscriberPackageVersion WHERE Id='${subscriberVersionId}' ${addFilter()}`;\n\nconst getDependenciesCmd = `\n    sfdx force:data:soql:query -t -q \"${query}\" -u ${session} --json\n`;\n\nconst response = JSON.parse(execSync(getDependenciesCmd).toString());\n\nif (response.status === 0) {\n\tconst dependencies = response.result.records[0]?.Dependencies?.ids?.map(\n\t\t(ele) => ele.subscriberPackageVersionId\n\t);\n\tconst updateResult = `copado -p 'Updating dependencies' -r '${\n\t\tdependencies ? JSON.stringify(dependencies) : ''\n\t}'`;\n\n\texecSync(updateResult);\n} else {\n\tconst updateResult = `copado -p 'Failed dependencies' -r '${response.message}'`;\n}\n\nfunction addFilter() {\n\tconst whereClause = installationKey ? `AND InstallationKey='${installationKey}'` : '';\n    return whereClause;\n}",
                    "copado__Type__c": "Standard",
                    "copado__Worker_Size__c": "S",
                    "CreatedDate": "2021-11-09T07:30:19.000+0000",
                    "Id": "a0k09000000FlLhAAK",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-11-30T09:14:23.000+0000",
                    "LastReferencedDate": "2021-11-30T09:14:23.000+0000",
                    "LastViewedDate": "2021-11-30T09:14:23.000+0000",
                    "Name": "SFDX Get Package Version Dependencies",
                    "SystemModstamp": "2021-11-30T09:14:23.000+0000"
                },
                {
                    "attributes": {
                      "type": "copado__Function__c",
                      "url": "/services/data/v54.0/sobjects/copado__Function__c/a0l7Q000000MDZ3QAO"
                    },
                    "copado__API_Name__c": "sfdx_execute_apex",
                    "copado__Description__c": "Run sfdx force:apex:execute to execute Apex Job Steps.",
                    "copado__Image_Name__c": "copado-multicloud-dx:v1",
                    "copado__Options__c": "[ ]",
                    "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"destination_sessionid\",\n  \"defaultValue\" : \"{$Destination.Credential.SessionId}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"destination_endpoint\",\n  \"defaultValue\" : \"{$Destination.Credential.Endpoint}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"script\"\n} ]",
                    "copado__Script__c": "#!/usr/bin/env node\n/**\n * Performs execution of apex script using sfdx cli command.\n * @param destination_sessionid\n * @param destination_endpoint\n * @param script\n */\n\nconst fs = require(\"fs\"),\n  { execSync } = require(\"child_process\"),\n  { destination_sessionid, destination_endpoint, script } = process.env,\n  destination_base_url = getBaseUrl(destination_endpoint);\n\n// EXECUTION\n\ntry {\n  setup();\n  executeApexScript();\n} catch (error) {\n  logError(error);\n}\n\n// FUNCTIONS\n\nfunction getBaseUrl(endpoint) {\n  return endpoint.substring(\n    0,\n    endpoint.indexOf(\"/\", endpoint.indexOf(\"/\") + 2)\n  );\n}\n\nfunction setup() {\n  const content = script.replace(\"\\\\n\", \" \");\n  fs.writeFileSync(\"script.apex\", content);\n  const cmd = `\n      copado -p 'Connecting to destination environment'\n      sfdx force:config:set instanceUrl=${destination_base_url} --global\n  `;\n  execSync(cmd, { stdio: \"inherit\" });\n}\n\nfunction executeApexScript() {\n  const cmd = `\n        copado -p 'Executing apex script'\n        sfdx force:apex:execute -u ${destination_sessionid} -f 'script.apex' --json\n  `;\n  const response = execSync(cmd, { maxBuffer: 50 * 1024 * 1024 });\n  validateResponse(response);\n}\n\nfunction validateResponse(response) {\n  if (!response) {\n    throw \"Apex script execution failed\";\n  }\n  const formattedResponse = JSON.parse(response.toString());\n  if (formattedResponse.status != 0) {\n    throw formattedResponse.message;\n  } else if (!formattedResponse.result.compiled || !formattedResponse.result.success) {\n    throw `Error occured: \"${JSON.stringify(formattedResponse?.result)}\". Please check logs for more details.`;\n  } else {\n    execSync(`copado -p 'Apex script execution completed successfully'`);\n  }\n}\n\nfunction logError(error) {\n  execSync(`copado -p 'Error' -e \"${error.toString()}\" && exit 1`);\n}",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": "1",
                    "copado__Worker_Size__c": "S",
                    "Id": "a0l7Q000000MDZ3QAO",
                    "LastReferencedDate": "2022-05-10T06:56:31.000+0000",
                    "LastViewedDate": "2022-05-10T06:56:31.000+0000",
                    "Name": "SFDX Execute Apex"
                },
                {
                    "attributes": {
                      "type": "copado__Function__c",
                      "url": "/services/data/v54.0/sobjects/copado__Function__c/a0l7Q000000MDZ4QAO"
                    },
                    "copado__API_Name__c": "SFDXPackageCreate",
                    "copado__Image_Name__c": "copado-multicloud-metadata:v1",
                    "copado__Options__c": "[ ]",
                    "copado__Parameters__c": "[ {\n  \"required\" : true,\n  \"name\" : \"ENDPOINT\",\n  \"defaultValue\" : \"{$Destination.Credential.Endpoint}\"\n}, {\n  \"required\" : true,\n  \"name\" : \"SESSION\",\n  \"defaultValue\" : \"{$Destination.Credential.SessionId}\"\n}, {\n  \"required\" : false,\n  \"name\" : \"packageName\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"path\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"jsonInformation\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"description\",\n  \"defaultValue\" : \"\"\n}, {\n  \"required\" : true,\n  \"name\" : \"git_json\",\n  \"defaultValue\" : \"{$Context.Repository.Credential}\"\n}, {\n  \"name\" : \"branch\",\n  \"defaultValue\" : \"\"\n} ]",
                    "copado__Script__c": "#!/usr/bin/env node\nconst fs = require('fs');\n\nconst { execSync } = require('child_process'),\n    endPoint = process.env['ENDPOINT'],\n    branchName = process.env['branch'],\n    params = JSON.parse(process.env['jsonInformation'].replace(/\\\\/g, '')),\n    baseUrl = endPoint.substring(0, endPoint.indexOf('/', endPoint.indexOf('/') + 2)),\n    dirName = 'sfProject',\n    checkLog = 'Please check the logs for details';\n\n// EXECUTION\ntry {\n    const flags = `\n${getFlag('loglevel', params?.loglevel)}\n${getFlag('targetdevhubusername', process.env['SESSION'])}\n${getFlag('apiversion', params?.apiversion)}\n${getStringFlag('name', process.env['packageName'])}\n${getStringFlag('path', process.env['path'])}\n${getStringFlag('packagetype', params?.packagetype)}\n${getBooleanFlag('nonamespace', params?.nonamespace)}\n${getBooleanFlag('orgdependent', params?.orgdependent)}\n${getStringFlag('description', process.env['description'])}\n${getStringFlag('errornotificationusername', params?.errornotificationusername)}\n`;\n    fs.mkdirSync(dirName);\n    process.chdir(dirName);\n\n    prepareAndCloneRepo();\n    createPackage(flags);\n\n} catch (err) {\n    execSync(`${getErrorCmd(err.toString())}`);\n}\n\n\n// SCRIPT FUNCTIONS\nfunction getFlag(flagname, value) {\n\treturn value ? ` --${flagname} ${value}` : '';\n}\n\nfunction getStringFlag(flagname, value) {\n\treturn value ? ` --${flagname} \"${value}\"` : '';\n}\n\nfunction getBooleanFlag(flagname, value) {\n\treturn value ? ` --${flagname}` : '';\n}\n\nfunction prepareAndCloneRepo(){\n    execSync(`\n        copado -p 'Cloning git repository'\n        copado-git-get \"${branchName}\" || (${getErrorCmd(`Could not checkout branch ${branchName}, ${checkLog}`)})\n    `);\n\n    execSync(`\n        copado -p 'Checked out branch \"${branchName}\"'\n        copado -p 'Setting instance url'\n        sfdx force:config:set instanceUrl=${baseUrl} --global || (${getErrorCmd(`Failed setting an instance URL, ${checkLog}`)})\n    `);\n}\n\nfunction createPackage(pkgCreateParam){\n    const createCmd = `\n        copado -p 'Creating package'\n        sfdx force:package:create ${pkgCreateParam.replace(/\\n|\\r/g, '')} --json || true\n        copado -p 'Finishing'\n    `;\n\n    const response = JSON.parse(execSync(createCmd).toString());\n\n    if (!response?.status && response?.result?.Id) {    \n        commit();\n        setProgressStatus({ progressStatus: 'Package created successfully', resultData: `${response.result.Id}` });\n    }\n    else if (response?.status && response?.message)\n        setProgressStatus({ progressStatus: 'Package creation failed', errorMessage: `Could not create package, ${response.message}` });\n    else \n        setProgressStatus({ progressStatus: 'Package creation did not finish', resultData: `${JSON.stringify(response)}`, errorMessage: `Could not create package, ${response.message}` });\n}\n\nfunction commit(){\n    execSync(`\n        git add \"sfdx-project.json\" || (${getErrorCmd(`Error adding git change, ${checkLog}`)})\n        git commit -m \"Committing sfdx-project.json\" || (${getErrorCmd(`Error commiting git change, ${checkLog}`)})\n        git push origin ${branchName} || (${getErrorCmd(`Error pushing changes in git, ${checkLog}`)})`\n    , { stdio: 'inherit' });\n}\n\nfunction setProgressStatus({ progressStatus, errorMessage, resultData}) {\n    execSync(`copado -p '${progressStatus}' ${errorMessage ? `-e '${errorMessage}'` : ''} ${resultData ? `-r '${resultData}'` : ''}`);\n    if(errorMessage)\n        throw errorMessage;\n}\n\nfunction getErrorCmd(error) {\n    return `copado -p 'Error' -e \"${error}\" && exit 1`;\n}",
                    "copado__Type__c": "Standard",
                    "copado__Worker_Size__c": "S",
                    "Id": "a0l7Q000000MDZ4QAO",
                    "LastReferencedDate": "2022-05-10T06:56:31.000+0000",
                    "LastViewedDate": "2022-05-10T06:56:31.000+0000",
                    "Name": "SFDX Package Create"
                },
                {
                    "attributes": {
                        "type": "copado__Function__c",
                        "url": "/services/data/v54.0/sobjects/copado__Function__c/a0l7Q000000M5T0QAK"
                    },
                    "copado__ApexClass__c": "cmcSf.RunApexTestsCallback",
                    "copado__API_Name__c": "SFDXRunApexTests",
                    "copado__Callback_Type__c": "ApexClass",
                    "copado__Image_Name__c": "copado-multicloud-dx:v2",
                    "copado__Options__c": "[ ]",
                    "copado__Parameters__c": "[ {\n  \"name\" : \"source_session_id\",\n  \"defaultValue\" : \"{$Source.Credential.SessionId}\"\n}, {\n  \"name\" : \"source_endpoint\",\n  \"defaultValue\" : \"{$Source.Credential.Endpoint}\"\n}, {\n  \"name\" : \"namespace\",\n  \"defaultValue\" : \"\"\n}, {\n  \"name\" : \"source_path\",\n  \"defaultValue\" : \"force-app\"\n}, {\n  \"name\" : \"test_minutes_timeout\",\n  \"defaultValue\" : \"1440\"\n}, {\n  \"name\" : \"test_result_ids\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.resultIds}\"\n}, {\n  \"name\" : \"test_classes\",\n  \"defaultValue\" : \"{$Context.apex.GetTestClasses}\"\n}, {\n  \"name\" : \"consolidated_result_id\",\n  \"defaultValue\" : \"{$Context.JobExecution__r.DataJson.resultId}\"\n} ]",
                    "copado__Script__c": "prepareSfdxProject() {\n\tcopado -p \"Preparing sfdx project configuration\"\n\n\tsource_endpoint=($(node -p \"('$source_endpoint').substring(0, '$source_endpoint'.indexOf('.com') + 4)\"))\n    \n    mkdir -p .sfdx\n\tcat << __EOF__ > \".sfdx/sfdx-config.json\"\n\t{\n\t\t\"instanceUrl\": \"$source_endpoint\"\n\t}\n__EOF__\n\t\n    cat << __EOF__ > \"sfdx-project.json\"\n\t{\n\t\t\"namespace\": \"$namespace\",\n\t\t\"packageDirectories\": [\n\t\t\t{\n\t\t\t\t\"path\": \"$source_path\",\n                \"default\": true\n            }\n\t\t],\n        \"sfdcLoginUrl\": \"\"\n\t}\n__EOF__\n}\n\nrunApexTests() {\n\techo \"test classes: ${test_classes}\"\n    copado -p \"Running Apex Tests in the source environment\"\n    sfdx force:apex:test:run -u ${source_session_id} -t ${test_classes} -r json --detailedcoverage --codecoverage --verbose --wait ${test_minutes_timeout} > /tmp/apex-tests-output.json || true\n    jq 'del(.result.summary.username)' /tmp/apex-tests-output.json > tmp.$$.json && mv tmp.$$.json /tmp/apex-tests-output.json\n}\n\nattachResultFile() {\n    # To function result\n\tcopado -u /tmp/apex-tests-output.json --name \"apex-tests-output.json\"\n\n\t# To test independent results, if existing\n\tif [ -n \"$test_result_ids\" ];\n    then\n      test_result_ids=$(echo $test_result_ids | sed -e \"s/\\[//g\" | sed -e \"s/\\]//g\" | sed -e \"s/ //g\" | xargs)\n      IFS=','\n      for test_result_id in ${test_result_ids};\n      do\n          copado -u /tmp/apex-tests-output.json --name \"apex-tests-output.json\" --parentid $test_result_id\n      done\n    fi\n    \n    # To consolidated result, if existing\n\tif [ -n \"$consolidated_result_id\" ];\n    then\n\t    copado -u /tmp/apex-tests-output.json --name \"apex-tests-output.json\" --parentid $consolidated_result_id\n    fi\n}\n\nprepareSfdxProject\nrunApexTests\nattachResultFile",
                    "copado__Timeout__c": 1440,
                    "copado__Type__c": "Standard",
                    "copado__Version__c": "1",
                    "copado__Worker_Size__c": "S",
                    "Id": "a0l7Q000000M5T0QAK",
                    "LastReferencedDate": "2022-04-21T16:43:31.000+0000",
                    "LastViewedDate": "2022-04-21T16:43:31.000+0000",
                    "Name": "SFDX Run Apex Tests"
                }
            ],
            "ObjectType": "copado__Function__c"
        },
        {
            "Records": [
                {
                    "attributes": {
                        "type": "copado__JobTemplate__c",
                        "url": "/services/data/v54.0/sobjects/copado__JobTemplate__c/a1x5f000000yTFgAAM"
                    },
                    "copado__ApiName__c": "sfdx_commit_1",
                    "copado__Description__c": "<p>Standard job template to perform git commit in User Stories</p>",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": 2,
                    "Id": "a1x5f000000yTFgAAM",
                    "LastReferencedDate": "2022-03-30T13:05:39.000+0000",
                    "LastViewedDate": "2022-03-30T13:05:39.000+0000",
                    "Name": "SFDX Commit"
                },
                {
                    "attributes": {
                      "type": "copado__JobTemplate__c",
                      "url": "/services/data/v54.0/sobjects/copado__JobTemplate__c/a0u7Q000000Xw29QAC"
                    },
                    "copado__ApiName__c": "sfdx_deploy_1",
                    "copado__Description__c": "<p>DX Source Deployment</p>",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": 1,
                    "copado__VolumeOptions__c": "[\n    {\n        \"name\": \"volumeSize\",\n        \"value\": \"10\"\n    },\n    {\n        \"name\": \"volumeTTL\",\n        \"value\": \"100\"\n    },\n    {\n        \"name\": \"preserveVolumeAfterExecution\",\n        \"value\": \"true\"\n    },\n    {\n        \"name\": \"volumeEnabled\",\n        \"value\": \"true\"\n    }\n]",
                    "Id": "a0u7Q000000Xw29QAC",
                    "LastReferencedDate": "2022-05-10T06:56:31.000+0000",
                    "LastViewedDate": "2022-05-10T06:56:31.000+0000",
                    "Name": "SFDX Deploy"
                },
                {
                    "attributes": {
                      "type": "copado__JobTemplate__c",
                      "url": "/services/data/v54.0/sobjects/copado__JobTemplate__c/a0u7Q000000Xw2AQAS"
                    },
                    "copado__ApiName__c": "sfdx_promote_1",
                    "copado__Description__c": "<p>DX Source Promote</p>",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": 1,
                    "Id": "a0u7Q000000Xw2AQAS",
                    "LastReferencedDate": "2022-05-10T06:56:31.000+0000",
                    "LastViewedDate": "2022-05-10T06:56:31.000+0000",
                    "Name": "SFDX Promote"
                },
                {
                    "attributes": {
                        "type": "copado__JobTemplate__c",
                        "url": "/services/data/v52.0/sobjects/copado__JobTemplate__c/a0t09000002vfF4AAI"
                    },
                    "copado__ApiName__c": "SFDX Package Distribution_1",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": 1,
                    "CreatedDate": "2021-09-16T15:21:19.000+0000",
                    "Id": "a0t09000002vfF4AAI",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-09-16T15:21:19.000+0000",
                    "LastReferencedDate": "2021-09-17T13:53:20.000+0000",
                    "LastViewedDate": "2021-09-17T13:53:20.000+0000",
                    "Name": "SFDX Package Distribution",
                    "SystemModstamp": "2021-09-16T15:21:19.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobTemplate__c",
                        "url": "/services/data/v52.0/sobjects/copado__JobTemplate__c/a0t09000002vfccAAA"
                    },
                    "copado__ApiName__c": "SFDX Package Import_1",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": 1,
                    "CreatedDate": "2021-09-17T14:07:46.000+0000",
                    "Id": "a0t09000002vfccAAA",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-10-04T09:11:43.000+0000",
                    "LastReferencedDate": "2021-10-04T09:11:43.000+0000",
                    "LastViewedDate": "2021-10-04T09:11:43.000+0000",
                    "Name": "SFDX Package Import",
                    "SystemModstamp": "2021-10-04T09:11:43.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobTemplate__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobTemplate__c/a0t09000002vumlAAA"
                    },
                    "copado__ApiName__c": "SFDX Package Version Publish_1",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": 1,
                    "CreatedDate": "2021-09-30T20:25:20.000+0000",
                    "Id": "a0t09000002vumlAAA",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-10-04T09:11:43.000+0000",
                    "LastReferencedDate": "2021-10-28T14:46:22.000+0000",
                    "LastViewedDate": "2021-10-28T14:46:22.000+0000",
                    "Name": "SFDX Package Version Publish",
                    "SystemModstamp": "2021-10-04T09:11:43.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobTemplate__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobTemplate__c/a0t09000002wR3zAAE"
                    },
                    "copado__ApiName__c": "SFDX Package Version Update_1",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": 1,
                    "CreatedDate": "2021-10-27T11:26:45.000+0000",
                    "Id": "a0t09000002wR3zAAE",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-10-27T11:26:45.000+0000",
                    "LastReferencedDate": "2021-10-28T07:13:13.000+0000",
                    "LastViewedDate": "2021-10-28T07:13:13.000+0000",
                    "Name": "SFDX Package Version Update",
                    "SystemModstamp": "2021-10-27T11:26:45.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobTemplate__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobTemplate__c/a0t09000002vuuvAAA"
                    },
                    "copado__ApiName__c": "SFDX Package Version Create_1",
                    "copado__Description__c": "<p>Creates Package Version</p>",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": 1,
                    "CreatedDate": "2021-10-01T12:18:40.000+0000",
                    "Id": "a0t09000002vuuvAAA",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-10-27T11:24:47.000+0000",
                    "LastReferencedDate": "2021-11-08T09:25:55.000+0000",
                    "LastViewedDate": "2021-11-08T09:25:55.000+0000",
                    "Name": "SFDX Package Version Create",
                    "SystemModstamp": "2021-10-27T11:24:47.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobTemplate__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobTemplate__c/a0t09000002wVAsAAM"
                    },
                    "copado__ApiName__c": "SFDX Package Create_1",
                    "copado__Description__c": "<p>Creates Package</p>",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": 1,
                    "CreatedDate": "2021-11-23T08:05:48.000+0000",
                    "Id": "a0t09000002wVAsAAM",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-11-23T08:05:48.000+0000",
                    "LastReferencedDate": "2022-01-08T18:48:46.000+0000",
                    "LastViewedDate": "2022-01-08T18:48:46.000+0000",
                    "Name": "SFDX Package Create",
                    "SystemModstamp": "2021-11-23T08:05:48.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobTemplate__c",
                        "url": "/services/data/v54.0/sobjects/copado__JobTemplate__c/a0u7Q000000XrrkQAC"
                    },
                    "copado__ApiName__c": "SFDX Run Apex Tests_1",
                    "copado__Type__c": "Standard",
                    "copado__Version__c": 1,
                    "Id": "a0u7Q000000XrrkQAC",
                    "LastReferencedDate": "2022-04-21T10:30:02.000+0000",
                    "LastViewedDate": "2022-04-21T10:30:02.000+0000",
                    "Name": "SFDX Run Apex Tests"
                }
            ],
            "ObjectType": "copado__JobTemplate__c"
        },
        {
            "Records": [
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0s09000000KT2KAAW"
                    },
                    "copado__ApiName__c": "SFDX Package Distribution_Install package",
                    "copado__ConfigJson__c": "{\"functionName\":\"sfdx_install_package\",\"parameters\":[{\"name\":\"PACKAGES\",\"value\":\"{$Job.PrevStep.Result__r.Result_Data__c}\",\"required\":true},{\"name\":\"BASEURL\",\"value\":\"{$Destination.Credential.Endpoint}\",\"required\":true},{\"name\":\"SESSION\",\"value\":\"{$Destination.Credential.SessionId}\",\"required\":true},{\"name\":\"WAIT\",\"value\":\"200\",\"required\":false}]}",
                    "copado__JobTemplate__c": "a0t09000002vfF4AAI",
                    "copado__Order__c": 3,
                    "copado__CustomType__c": "Function",
                    "copado__Type__c": "Function",
                    "CreatedDate": "2021-10-04T09:11:43.000+0000",
                    "Id": "a0s09000000KT2KAAW",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-11-10T21:35:44.000+0000",
                    "Name": "Install package",
                    "SystemModstamp": "2021-11-10T21:35:44.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0s09000001czpdAAA"
                    },
                    "copado__ApiName__c": "SFDX Package Distribution_Get Dependencies",
                    "copado__ConfigJson__c": "{\"functionName\":\"SFDX_Get_Package_Version_Dependencies\",\"parameters\":[{\"name\":\"ENDPOINT\",\"value\":\"{$Destination.Credential.Endpoint}\",\"required\":true},{\"name\":\"SESSION\",\"value\":\"{$Destination.Credential.SessionId}\",\"required\":true},{\"name\":\"subscriberVersionId\",\"value\":\"{$Context.JobExecution__r.DataJson.subscriberId}\",\"required\":true},{\"name\":\"installationKey\",\"value\":\"{$Context.JobExecution__r.DataJson.installationKey}\"}]}",
                    "copado__JobTemplate__c": "a0t09000002vfF4AAI",
                    "copado__Order__c": 1,
                    "copado__CustomType__c": "Function",
                    "copado__Type__c": "Function",
                    "CreatedDate": "2021-11-10T09:30:02.000+0000",
                    "Id": "a0s09000001czpdAAA",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-11-11T09:24:13.000+0000",
                    "Name": "Get Dependencies",
                    "SystemModstamp": "2021-11-11T09:24:13.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0s09000001czqSAAQ"
                    },
                    "copado__ApiName__c": "SFDX Package Distribution_Get Keys",
                    "copado__ConfigJson__c": "{\"flowName\":\"cmcSf.GetPackageVersionWithKey\",\"parameters\":[{\"name\":\"subscriberVersionId\",\"value\":\"{$Context.JobExecution__r.DataJson.subscriberId}\"},{\"name\":\"dependenciesSubscriberIds\",\"value\":\"{$Job.PrevStep.Result__r.Result_Data__c}\"}]}",
                    "copado__JobTemplate__c": "a0t09000002vfF4AAI",
                    "copado__Order__c": 2,
                    "copado__CustomType__c": "Flow",
                    "copado__Type__c": "Flow",
                    "CreatedDate": "2021-11-10T13:23:42.000+0000",
                    "Id": "a0s09000001czqSAAQ",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-11-11T10:03:18.000+0000",
                    "Name": "Get Keys",
                    "SystemModstamp": "2021-11-11T10:03:18.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v54.0/sobjects/copado__JobStep__c/a1w5f000000z67QAAQ"
                    },
                    "copado__ApiName__c": "SFDX Commit_Commit",
                    "copado__ConfigJson__c": "{\"functionName\":\"sfdx_commit\",\"parameters\":[{\"name\":\"file_changes_id\",\"value\":\"{$Context.JobExecution__r.DataJson.fileWithSelectedChanges}\",\"required\":true},{\"name\":\"file_name\",\"value\":\"Copado Commit changes.json\",\"required\":true},{\"name\":\"source_sessionid\",\"value\":\"{$Source.Credential.SessionId}\",\"required\":true},{\"name\":\"source_endpoint\",\"value\":\"{$Source.Credential.Endpoint}\",\"required\":true},{\"name\":\"namespace\",\"value\":\"\"},{\"name\":\"source_path\",\"value\":\"force-app\"},{\"name\":\"git_json\",\"value\":\"{$Context.Repository.Credential}\",\"required\":true},{\"name\":\"base_branch\",\"value\":\"{$Context.JobExecution__r.DataJson.baseBranch}\",\"required\":true},{\"name\":\"source_env\",\"value\":\"{$Source.apex.EnvironmentVariables}\",\"required\":true},{\"name\":\"find_and_replace_rules\",\"value\":\"{$Context.apex.GlobalFindAndReplaceSourceId}\",\"required\":false},{\"name\":\"feature_branch\",\"value\":\"{$Context.JobExecution__r.DataJson.featureBranchName}\",\"required\":true},{\"name\":\"recreate_if_exists\",\"value\":\"{$Context.JobExecution__r.DataJson.recreateFeatureBranch}\",\"required\":true},{\"name\":\"commit_message\",\"value\":\"{$Context.JobExecution__r.DataJson.message}\",\"required\":true},{\"name\":\"git_email\",\"value\":\"{$User.Email}\",\"required\":true},{\"name\":\"git_name\",\"value\":\"{$User.Name}\",\"required\":true},{\"name\":\"source_environment_branch\",\"value\":\"{$Context.apex.SourceEnvironmentBranch}\",\"required\":true}]}",
                    "copado__CustomType__c": "Function",
                    "copado__JobTemplate__c": "a1x5f000000yTFgAAM",
                    "copado__Order__c": 1,
                    "copado__Type__c": "Function",
                    "Id": "a1w5f000000z67QAAQ",
                    "Name": "Commit"
                },
                {
                    "attributes": {
                      "type": "copado__JobStep__c",
                      "url": "/services/data/v54.0/sobjects/copado__JobStep__c/a0t7Q000000M8RfQAK"
                    },
                    "copado__ApiName__c": "sfdx_deploy_sfdx_deploy",
                    "copado__ConfigJson__c": "{\"functionName\":\"sfdx_deploy\",\"parameters\":[{\"name\":\"file_changes_id\",\"value\":\"{$Context.JobExecution__r.DataJson.fileWithSelectedChanges}\",\"required\":true},{\"name\":\"promotion\",\"value\":\"{$Context.JobExecution__r.DataJson.promotionBranchName}\",\"required\":true},{\"name\":\"target_branch\",\"value\":\"{$Context.JobExecution__r.DataJson.destinationBranchName}\",\"required\":true},{\"name\":\"destination_instance_url\",\"value\":\"{$Destination.Credential.Endpoint}\",\"required\":true},{\"name\":\"destination_sessionid\",\"value\":\"{$Destination.Credential.SessionId}\",\"required\":true},{\"name\":\"git_json\",\"value\":\"{$Context.Repository.Credential}\",\"required\":true},{\"name\":\"destination_env\",\"value\":\"{$Destination.apex.EnvironmentVariables}\",\"required\":true},{\"name\":\"find_and_replace_rules\",\"value\":\"{$Context.apex.GlobalFindAndReplaceDestinationId}\"},{\"name\":\"conflict_resolution_attachments\",\"value\":\"{$Context.apex.GetConflictResolutionAttachments}\",\"required\":true},{\"name\":\"deploy_id\",\"value\":\"{$Job.ExecutionParent.Id}\",\"required\":true},{\"name\":\"checkonly_flag\",\"value\":\"{$Context.JobExecution__r.DataJson.deploymentDryRun}\",\"required\":true},{\"name\":\"git_name\",\"value\":\"{$User.Name}\"},{\"name\":\"git_email\",\"value\":\"{$User.Email}\"},{\"name\":\"repository_id\",\"value\":\"{$Pipeline.Git_Repository__r.Id}\"},{\"name\":\"test_level\",\"value\":\"{$Job.ExecutionParent.Promotion__r.cmcSf__Apex_Test_Level__c}\"},{\"name\":\"test_classes\",\"value\":\"{$Context.apex.cmcSf.GetTestOnlyClasses}\"},{\"name\":\"debugMode\",\"value\":\"{$Job.ExecutionParent.Promotion__r.cmcSf__Debug_Mode__c}\"}]}",
                    "copado__CustomType__c": "Function",
                    "copado__JobTemplate__c": "a0u7Q000000Xw29QAC",
                    "copado__Order__c": 2,
                    "copado__Type__c": "Function",
                    "Id": "a0t7Q000000M8RfQAK",
                    "Name": "Deploy"
                },
                {
                    "attributes": {
                      "type": "copado__JobStep__c",
                      "url": "/services/data/v54.0/sobjects/copado__JobStep__c/a0t7Q000000M8RgQAK"
                    },
                    "copado__ApiName__c": "sfdx_deploy_Encode Deploy changes",
                    "copado__ConfigJson__c": "{\"functionName\":\"sfdx_encode_file_names\",\"parameters\":[{\"name\":\"file_changes_id\",\"value\":\"{$Context.JobExecution__r.DataJson.fileWithSelectedChanges}\"},{\"name\":\"file_name\",\"value\":\"Copado Deploy changes.json\"}]}",
                    "copado__CustomType__c": "Function",
                    "copado__JobTemplate__c": "a0u7Q000000Xw29QAC",
                    "copado__Order__c": 1,
                    "copado__Type__c": "Function",
                    "Id": "a0t7Q000000M8RgQAK",
                    "Name": "Encode file names"
                },
                {
                    "attributes": {
                      "type": "copado__JobStep__c",
                      "url": "/services/data/v54.0/sobjects/copado__JobStep__c/a0t7Q000000M8RhQAK"
                    },
                    "copado__ApiName__c": "sfdx_promote_sfdx_promote",
                    "copado__ConfigJson__c": "{\"functionName\":\"sfdx_promote\",\"parameters\":[{\"name\":\"user_stories\",\"value\":\"{$Context.JobExecution__r.DataJson.userStoryBranches}\",\"required\":true},{\"name\":\"promotion_branch\",\"value\":\"{$Context.JobExecution__r.DataJson.promotionBranchName}\",\"required\":true},{\"name\":\"target_branch\",\"value\":\"{$Context.JobExecution__r.DataJson.destinationBranchName}\",\"required\":true},{\"name\":\"tag\",\"value\":\"{$Context.JobExecution__r.Promotion__r.Release__r.Version__c}\",\"required\":false},{\"name\":\"git_json\",\"value\":\"{$Context.Repository.Credential}\",\"required\":true},{\"name\":\"recreate_if_exists\",\"value\":\"true\",\"required\":false},{\"name\":\"promotion_id\",\"value\":\"{$Job.ExecutionParent.Id}\"},{\"name\":\"file_changes_id\",\"value\":\"{$Context.JobExecution__r.DataJson.fileWithSelectedChanges}\"},{\"name\":\"conflict_resolution_attachments\",\"value\":\"{$Context.apex.GetConflictResolutionAttachments}\"},{\"name\":\"git_name\",\"value\":\"{$User.Name}\"},{\"name\":\"git_email\",\"value\":\"{$User.Email}\"},{\"name\":\"repository_id\",\"value\":\"{$Pipeline.Git_Repository__r.Id}\"},{\"name\":\"git_depth\",\"value\":\"100\",\"required\":true}]}",
                    "copado__CustomType__c": "Function",
                    "copado__JobTemplate__c": "a0u7Q000000Xw2AQAS",
                    "copado__Order__c": 1,
                    "copado__Type__c": "Function",
                    "Id": "a0t7Q000000M8RhQAK",
                    "Name": "Promote"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v52.0/sobjects/copado__JobStep__c/a0s09000000KT2TAAW"
                    },
                    "copado__ApiName__c": "SFDX Package Import_Retrieve Package Information",
                    "copado__ConfigJson__c": "{\"functionName\":\"Devhub_Package_Info\",\"parameters\":[{\"name\":\"PACKAGE\",\"value\":\"{$Context.JobExecution__r.DataJson.packageNameOrId}\"},{\"name\":\"SESSION\",\"value\":\"{$Source.Credential.SessionId}\"},{\"name\":\"BASEURL\",\"value\":\"{$Source.Credential.Endpoint}\"}]}",
                    "copado__JobTemplate__c": "a0t09000002vfccAAA",
                    "copado__Order__c": 2,
                    "copado__CustomType__c": "Function",
                    "copado__Type__c": "Function",
                    "CreatedDate": "2021-10-04T09:11:43.000+0000",
                    "Id": "a0s09000000KT2TAAW",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-10-04T09:59:20.000+0000",
                    "Name": "Retrieve Package Information",
                    "SystemModstamp": "2021-10-04T09:59:20.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0s09000000KT2UAAW"
                    },
                    "copado__ApiName__c": "SFDX Package Import_Upsert Package Information",
                    "copado__ConfigJson__c": "{\"flowName\":\"cmcSf.ImportPackageAndVersions\",\"parameters\":[{\"name\":\"packageJson\",\"value\":\"{$Job.PrevStep.Result__r.Result_Data__c}\"},{\"name\":\"pipelineId\",\"value\":\"{$Context.JobExecution__r.DataJson.pipelineId}\"},{\"name\":\"jsonInformation\",\"value\":\"{$Context.JobExecution__r.DataJson.jsonInformation}\"},{\"name\":\"type\",\"value\":\"wait\"}]}",
                    "copado__JobTemplate__c": "a0t09000002vfccAAA",
                    "copado__Order__c": 3,
                    "copado__CustomType__c": "Flow",
                    "copado__Type__c": "Flow",
                    "CreatedDate": "2021-10-04T09:11:43.000+0000",
                    "Id": "a0s09000000KT2UAAW",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-10-31T21:44:48.000+0000",
                    "Name": "Upsert Package Information",
                    "SystemModstamp": "2021-10-31T21:44:48.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v52.0/sobjects/copado__JobStep__c/a0s09000000KT2WAAW"
                    },
                    "copado__ApiName__c": "SFDX Package Import_Update Source on Job Execution",
                    "copado__ConfigJson__c": "{\"flowName\":\"cmcSf.Update_Source_on_Job_Execution\",\"parameters\":[{\"name\":\"type\",\"value\":\"wait\"},{\"name\":\"jsonInformation\",\"value\":\"{$Context.JobExecution__r.DataJson.jsonInformation}\"}]}",
                    "copado__JobTemplate__c": "a0t09000002vfccAAA",
                    "copado__Order__c": 1,
                    "copado__CustomType__c": "Flow",
                    "copado__Type__c": "Flow",
                    "CreatedDate": "2021-10-04T09:14:13.000+0000",
                    "Id": "a0s09000000KT2WAAW",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-10-04T10:48:24.000+0000",
                    "Name": "Update Source on Job Execution",
                    "SystemModstamp": "2021-10-04T10:48:24.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0s09000000KT2VAAW"
                    },
                    "copado__ApiName__c": "SFDX Package Version Publish_Promote Package to Release",
                    "copado__ConfigJson__c": "{\"functionName\":\"sfdx_package_version_publish\",\"parameters\":[{\"name\":\"packageVersionId\",\"value\":\"{$Job.PrevStep.Result__r.Result_Data__c}\",\"required\":true},{\"name\":\"SESSION\",\"value\":\"{$Destination.Credential.SessionId}\",\"required\":true},{\"name\":\"BASEURL\",\"value\":\"{$Destination.Credential.Endpoint}\",\"required\":true}]}",
                    "copado__JobTemplate__c": "a0t09000002vumlAAA",
                    "copado__Order__c": 2,
                    "copado__CustomType__c": "Function",
                    "copado__Type__c": "Function",
                    "CreatedDate": "2021-10-04T09:11:43.000+0000",
                    "Id": "a0s09000000KT2VAAW",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-10-25T00:06:07.000+0000",
                    "Name": "Publish Package Version",
                    "SystemModstamp": "2021-10-25T00:06:07.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0s09000001cxfQAAQ"
                    },
                    "copado__ApiName__c": "SFDX Package Version Publish_Update Destination on Job Execution",
                    "copado__ConfigJson__c": "{\"flowName\":\"cmcSf.UpdatePackageVersionRequisite\",\"parameters\":[{\"name\":\"packageVersionId\",\"value\":\"{$Context.JobExecution__r.DataJson.packageVersionId}\"},{\"name\":\"type\",\"value\":\"wait\"}]}",
                    "copado__JobTemplate__c": "a0t09000002vumlAAA",
                    "copado__Order__c": 1,
                    "copado__CustomType__c": "Flow",
                    "copado__Type__c": "Flow",
                    "CreatedDate": "2021-10-16T20:56:23.000+0000",
                    "Id": "a0s09000001cxfQAAQ",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-10-28T14:17:47.000+0000",
                    "Name": "Update Package Version Requisite",
                    "SystemModstamp": "2021-10-28T14:17:47.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0s09000001cyTWAAY"
                    },
                    "copado__ApiName__c": "SFDX Package Version Update_Update Package Version",
                    "copado__ConfigJson__c": "{\"functionName\":\"SFDX_Package_Version_Update\",\"parameters\":[{\"name\":\"SESSION\",\"value\":\"{$Destination.Credential.SessionId}\",\"required\":true},{\"name\":\"ENDPOINT\",\"value\":\"{$Destination.Credential.Endpoint}\",\"required\":true},{\"name\":\"subscriberVersionId\",\"value\":\"{$Context.JobExecution__r.DataJson.subscriberVersionId}\",\"required\":true},{\"name\":\"branch\",\"value\":\"{$Context.JobExecution__r.DataJson.branch}\"},{\"name\":\"tag\",\"value\":\"{$Context.JobExecution__r.DataJson.tag}\"},{\"name\":\"installationKey\",\"value\":\"{$Context.JobExecution__r.DataJson.installationKey}\"},{\"name\":\"versionName\",\"value\":\"{$Context.JobExecution__r.DataJson.versionName}\"},{\"name\":\"description\",\"value\":\"{$Context.JobExecution__r.DataJson.description}\"}]}",
                    "copado__JobTemplate__c": "a0t09000002wR3zAAE",
                    "copado__Order__c": 1,
                    "copado__CustomType__c": "Function",
                    "copado__Type__c": "Function",
                    "CreatedDate": "2021-10-27T11:28:15.000+0000",
                    "Id": "a0s09000001cyTWAAY",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-11-03T03:49:24.000+0000",
                    "Name": "Update Package Version",
                    "SystemModstamp": "2021-11-03T03:49:24.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0s09000001cyeUAAQ"
                    },
                    "copado__ApiName__c": "SFDX Package Version Update_Update Records",
                    "copado__ConfigJson__c": "{\"flowName\":\"cmcSf.UpdatePackageVersion\",\"parameters\":[{\"name\":\"newVersion\",\"value\":\"{$Job.PrevStep.Result__r.Result_Data__c}\"},{\"name\":\"type\",\"value\":\"wait\"}]}",
                    "copado__JobTemplate__c": "a0t09000002wR3zAAE",
                    "copado__Order__c": 2,
                    "copado__CustomType__c": "Flow",
                    "copado__Type__c": "Flow",
                    "CreatedDate": "2021-10-28T08:33:36.000+0000",
                    "Id": "a0s09000001cyeUAAQ",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-10-28T12:55:42.000+0000",
                    "Name": "Update Records",
                    "SystemModstamp": "2021-10-28T12:55:42.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v54.0/sobjects/copado__JobStep__c/a0s09000001eChjAAE"
                    },
                    "copado__ApiName__c": "SFDX Package Version Create_Create SFDX Package Version",
                    "copado__ConfigJson__c": "{\"functionName\":\"SFDX_Package_Version_Create\",\"parameters\":[{\"name\":\"ENDPOINT\",\"value\":\"{$Destination.Credential.Endpoint}\",\"required\":true},{\"name\":\"SESSION\",\"value\":\"{$Destination.Credential.SessionId}\",\"required\":true},{\"name\":\"packageId\",\"value\":\"{$Job.PrevStep.Result__r.Result_Data__c}\",\"required\":false},{\"name\":\"versionName\",\"value\":\"{$Context.JobExecution__r.DataJson.versionName}\"},{\"name\":\"versionNumber\",\"value\":\"{$Context.JobExecution__r.DataJson.versionNumber}\"},{\"name\":\"description\",\"value\":\"{$Context.JobExecution__r.DataJson.description}\"},{\"name\":\"jsonInformation\",\"value\":\"{$Context.JobExecution__r.DataJson.jsonInformation}\",\"required\":false},{\"name\":\"git_json\",\"value\":\"{$Context.Repository.Credential}\",\"required\":true}]}",
                    "copado__JobTemplate__c": "a0t09000002vuuvAAA",
                    "copado__Order__c": 2,
                    "copado__CustomType__c": "Function",
                    "copado__Type__c": "Function",
                    "CreatedDate": "2022-01-19T08:36:42.000+0000",
                    "Id": "a0s09000001eChjAAE",
                    "IsDeleted": false,
                    "LastModifiedDate": "2022-02-26T10:46:30.000+0000",
                    "Name": "Create SFDX Package Version",
                    "SystemModstamp": "2022-02-26T10:46:30.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0s09000001cxhHAAQ"
                    },
                    "copado__ApiName__c": "SFDX Package Version Create_Update Destination on Job Execution",
                    "copado__ConfigJson__c": "{\"flowName\":\"cmcSf.UpdatePackageRequisite\",\"parameters\":[{\"name\":\"packageId\",\"value\":\"{$Context.JobExecution__r.DataJson.packageId}\"},{\"name\":\"type\",\"value\":\"wait\"}]}",
                    "copado__JobTemplate__c": "a0t09000002vuuvAAA",
                    "copado__Order__c": 1,
                    "copado__CustomType__c": "Flow",
                    "copado__Type__c": "Flow",
                    "CreatedDate": "2021-10-17T19:48:06.000+0000",
                    "Id": "a0s09000001cxhHAAQ",
                    "IsDeleted": false,
                    "LastModifiedDate": "2021-10-28T12:42:15.000+0000",
                    "Name": "Update Package Requisite",
                    "SystemModstamp": "2021-10-28T12:42:15.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0s09000001eChlAAE"
                    },
                    "copado__ApiName__c": "SFDX Package Version Publish_Insert Package Version Information",
                    "copado__ConfigJson__c": "{\"flowName\":\"cmcSf.CreatePackageVersion\",\"parameters\":[{\"name\":\"packageVersionJson\",\"value\":\"{$Job.PrevStep.Result__r.Result_Data__c}\"},{\"name\":\"jsonInformation\",\"value\":\"{$Context.JobExecution__r.DataJson.jsonInformation}\"}]}",
                    "copado__JobTemplate__c": "a0t09000002vuuvAAA",
                    "copado__Order__c": 3,
                    "copado__CustomType__c": "Flow",
                    "copado__Type__c": "Flow",
                    "CreatedDate": "2022-01-19T08:36:42.000+0000",
                    "Id": "a0s09000001eChlAAE",
                    "IsDeleted": false,
                    "LastModifiedDate": "2022-01-31T08:36:36.000+0000",
                    "Name": "Insert Package Version Information",
                    "SystemModstamp": "2022-01-31T08:36:36.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v54.0/sobjects/copado__JobStep__c/a0s09000001eChmAAE"
                    },
                    "copado__ApiName__c": "SFDX Package Create_Create Package on Destination",
                    "copado__ConfigJson__c": "{\"functionName\":\"SFDXPackageCreate\",\"parameters\":[{\"name\":\"ENDPOINT\",\"value\":\"{$Destination.Credential.Endpoint}\",\"required\":true},{\"name\":\"SESSION\",\"value\":\"{$Destination.Credential.SessionId}\",\"required\":true},{\"name\":\"packageName\",\"value\":\"{$Job.ExecutionParent.Name}\",\"required\":false},{\"name\":\"path\",\"value\":\"{$Job.ExecutionParent.copado__DefaultPath__c}\"},{\"name\":\"jsonInformation\",\"value\":\"{$Context.JobExecution__r.DataJson.jsonInformation}\"},{\"name\":\"description\",\"value\":\"{$Job.ExecutionParent.copado__Description__c}\"},{\"name\":\"git_json\",\"value\":\"{$Context.Repository.Credential}\",\"required\":true},{\"name\":\"branch\",\"value\":\"{$Job.ExecutionParent.copado__DefaultBranch__c}\"}]}",
                    "copado__JobTemplate__c": "a0t09000002wVAsAAM",
                    "copado__Order__c": 2,
                    "copado__CustomType__c": "Function",
                    "copado__Type__c": "Function",
                    "CreatedDate": "2022-01-19T08:36:42.000+0000",
                    "Id": "a0s09000001eChmAAE",
                    "IsDeleted": false,
                    "LastModifiedDate": "2022-02-26T11:31:24.000+0000",
                    "Name": "Create Package on Destination",
                    "SystemModstamp": "2022-02-26T11:31:24.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0s09000001d0rxAAA"
                    },
                    "copado__ApiName__c": "SFDX Package Create_Update Package",
                    "copado__ConfigJson__c": "{\"flowName\":\"cmcSf.UpdatePackage\",\"parameters\":[{\"name\":\"packageId\",\"value\":\"{$Context.JobExecution__r.DataJson.packageId}\"},{\"name\":\"package2Id\",\"value\":\"{$Job.PrevStep.Result__r.Result_Data__c}\"}]}",
                    "copado__JobTemplate__c": "a0t09000002wVAsAAM",
                    "copado__Order__c": 3,
                    "copado__CustomType__c": "Flow",
                    "copado__Type__c": "Flow",
                    "CreatedDate": "2021-11-23T11:50:09.000+0000",
                    "Id": "a0s09000001d0rxAAA",
                    "IsDeleted": false,
                    "LastModifiedDate": "2022-01-07T08:16:40.000+0000",
                    "Name": "Update Package",
                    "SystemModstamp": "2022-01-07T08:16:40.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v53.0/sobjects/copado__JobStep__c/a0s09000001diC2AAI"
                    },
                    "copado__ApiName__c": "SFDX Package Create_Update Destination on Job Ex",
                    "copado__ConfigJson__c": "{\"flowName\":\"cmcSf.UpdateDestinationOnJobExecution\",\"parameters\":[{\"name\":\"packageId\",\"value\":\"{$Context.JobExecution__r.DataJson.packageId}\"}]}",
                    "copado__JobTemplate__c": "a0t09000002wVAsAAM",
                    "copado__Order__c": 1,
                    "copado__CustomType__c": "Flow",
                    "copado__Type__c": "Flow",
                    "CreatedDate": "2022-01-07T08:10:56.000+0000",
                    "Id": "a0s09000001diC2AAI",
                    "IsDeleted": false,
                    "LastModifiedDate": "2022-01-08T18:08:05.000+0000",
                    "Name": "Update Destination on Job Execution",
                    "SystemModstamp": "2022-01-08T18:08:05.000+0000"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v54.0/sobjects/copado__JobStep__c/a0t7Q000000Li7RQAS"
                    },
                    "copado__ApiName__c": "SFDX Run Apex Tests_Run Apex Tests",
                    "copado__ConfigJson__c": "{\"functionName\":\"SFDXRunApexTests\",\"parameters\":[{\"name\":\"source_session_id\",\"value\":\"{$Source.Credential.SessionId}\"},{\"name\":\"source_endpoint\",\"value\":\"{$Source.Credential.Endpoint}\"},{\"name\":\"namespace\",\"value\":\"\"},{\"name\":\"source_path\",\"value\":\"force-app\"},{\"name\":\"test_minutes_timeout\",\"value\":\"1440\"},{\"name\":\"test_result_ids\",\"value\":\"{$Context.JobExecution__r.DataJson.resultIds}\"},{\"name\":\"test_classes\",\"value\":\"{$Context.apex.GetTestClasses}\"},{\"name\":\"consolidated_result_id\",\"value\":\"{$Context.JobExecution__r.DataJson.resultId}\"}]}",
                    "copado__CustomType__c": "Function",
                    "copado__JobTemplate__c": "a0u7Q000000XrrkQAC",
                    "copado__Order__c": 3,
                    "copado__Type__c": "Function",
                    "Id": "a0t7Q000000Li7RQAS",
                    "Name": "Run Apex Tests"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v54.0/sobjects/copado__JobStep__c/a0t7Q000000Li7SQAS"
                    },
                    "copado__ApiName__c": "SFDX Run Apex Tests_Populate Source Environment",
                    "copado__ConfigJson__c": "{\"flowName\":\"cmcSf.SetSourceEnvironmentOnApexTestJobExecution\",\"parameters\":[{\"name\":\"jobExecutionId\",\"value\":\"{$Context.JobExecution__r.Id}\"},{\"name\":\"testIds\",\"value\":\"{$Context.JobExecution__r.DataJson.testIds}\"}]}",
                    "copado__CustomType__c": "Salesforce Flow",
                    "copado__JobTemplate__c": "a0u7Q000000XrrkQAC",
                    "copado__Order__c": 1,
                    "copado__Type__c": "Flow",
                    "Id": "a0t7Q000000Li7SQAS",
                    "Name": "Set Source Environment"
                },
                {
                    "attributes": {
                        "type": "copado__JobStep__c",
                        "url": "/services/data/v54.0/sobjects/copado__JobStep__c/a0t7Q000000Li7TQAS"
                    },
                    "copado__ApiName__c": "SFDX Run Apex Tests_Evaluate Apex Tests Acceptance Criteria",
                    "copado__ConfigJson__c": "{\"flowName\":\"cmcSf.EvaluateApexTestsAcceptanceCriteria\",\"parameters\":[{\"name\":\"acceptanceCriteria\",\"value\":\"{$Context.JobExecution__r.DataJson.acceptanceCriteria}\"},{\"name\":\"resultIds\",\"value\":\"{$Context.JobExecution__r.DataJson.resultIds}\"},{\"name\":\"consolidatedResultId\",\"value\":\"{$Context.JobExecution__r.DataJson.resultId}\"}]}",
                    "copado__CustomType__c": "Salesforce Flow",
                    "copado__JobTemplate__c": "a0u7Q000000XrrkQAC",
                    "copado__Order__c": 4,
                    "copado__Type__c": "Flow",
                    "Id": "a0t7Q000000Li7TQAS",
                    "Name": "Evaluate Apex Tests Acceptance Criteria"
                }
            ],
            "ObjectType": "copado__JobStep__c"
        }
    ],
    "blobsByUID": {}
}
