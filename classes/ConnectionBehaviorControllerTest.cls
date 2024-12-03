@isTest
public with sharing class ConnectionBehaviorControllerTest {
    
    @IsTest
    static void testConnectionBehaviorControllerNotOverridden() {
        Connection_Behavior__c thisConnectionBehavior = new Connection_Behavior__c();
        insert thisConnectionBehavior;

        Environment__c thisEnvironment = new Environment__c();
        thisEnvironment.Name = 'Prod';
        thisEnvironment.Type__c = 'Production/Developer';
        thisEnvironment.Connection_Behavior__c = thisConnectionBehavior.Id;
        insert thisEnvironment;

        Deployment_Flow__c thisFlow = new Deployment_Flow__c();
        thisFlow.Name = 'test 1';
        thisFlow.Active__c = true;
        thisFlow.Main_Branch__c = 'master';
        thisFlow.Calculate_Based_on__c = 'User Story';
        insert thisFlow;

        Deployment_Flow_Step__c thisFlowStep = new Deployment_Flow_Step__c();
        thisFlowStep.Source_Environment__c = thisEnvironment.Id;
        thisFlowStep.Connection_Behavior_Override__c = thisConnectionBehavior.Id;
        thisFlowStep.Deployment_Flow__c = thisFlow.Id;
        insert thisFlowStep;
        Test.startTest();

        System.assertEquals(false, ConnectionBehaviorController.validateOverrideConnectionBehavior(thisConnectionBehavior.id).hasOverridden, 'Connection Behavior is not overriden');

        Test.stopTest();
    }

@IsTest
    static void testConnectionBehaviorControllerOverridden() {
        Connection_Behavior__c thisConnectionBehavior = new Connection_Behavior__c();
        insert thisConnectionBehavior;

        Environment__c thisEnvironment = new Environment__c();
        thisEnvironment.Name = 'Prod';
        thisEnvironment.Type__c = 'Production/Developer';
        thisEnvironment.Connection_Behavior__c = thisConnectionBehavior.Id;
        insert thisEnvironment;

        Deployment_Flow__c thisFlow = new Deployment_Flow__c();
        thisFlow.Name = 'test 1';
        thisFlow.Active__c = true;
        thisFlow.Main_Branch__c = 'master';
        thisFlow.Calculate_Based_on__c = 'User Story';
        insert thisFlow;

        Deployment_Flow_Step__c thisFlowStep = new Deployment_Flow_Step__c();
        thisFlowStep.Destination_Environment__c = thisEnvironment.Id;
        thisFlowStep.Connection_Behavior_Override__c = thisConnectionBehavior.Id;
        thisFlowStep.Deployment_Flow__c = thisFlow.Id;
        insert thisFlowStep;
        Test.startTest();

        System.assertEquals(true, ConnectionBehaviorController.validateOverrideConnectionBehavior(thisConnectionBehavior.id).hasOverridden, 'Connection behavior is overridden');

        Test.stopTest();
    }

  @IsTest
    static void testConnectionBehaviorControllerOverriding() {
        Connection_Behavior__c thisConnectionBehavior = new Connection_Behavior__c();
        insert thisConnectionBehavior;

        Environment__c thisEnvironment = new Environment__c();
        thisEnvironment.Name = 'Prod';
        thisEnvironment.Type__c = 'Production/Developer';
        insert thisEnvironment;

        Deployment_Flow__c thisFlow = new Deployment_Flow__c();
        thisFlow.Name = 'test 1';
        thisFlow.Active__c = true;
        thisFlow.Main_Branch__c = 'master';
        thisFlow.Calculate_Based_on__c = 'User Story';
        insert thisFlow;

        Deployment_Flow_Step__c thisFlowStep = new Deployment_Flow_Step__c();
        thisFlowStep.Destination_Environment__c = thisEnvironment.Id;
        thisFlowStep.Connection_Behavior_Override__c = thisConnectionBehavior.Id;
        thisFlowStep.Deployment_Flow__c = thisFlow.Id;
        insert thisFlowStep;
        Test.startTest();

        System.assertEquals(true, ConnectionBehaviorController.validateOverrideConnectionBehavior(thisConnectionBehavior.id).isOverriding, 'Connection behavior is overriding');

        Test.stopTest();
    }  
}