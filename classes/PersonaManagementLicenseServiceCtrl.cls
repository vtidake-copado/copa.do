public with sharing class PersonaManagementLicenseServiceCtrl {
    @AuraEnabled
    public static List<LicenseServiceHelper.LicenseDefinition> getLicenses() {
        return LicenseServiceHelper.getLicenseDefinitions();
    }

    @AuraEnabled
    public static List<LicenseServiceHelper.LicenseDefinition> getLicensesForPersona(String personaId) {
        return LicenseServiceHelper.getLicensesForPersona(personaId);
    }

    @AuraEnabled
    public static void addPackageLicense1(String personaId, List<String> licenses) {
        Persona.AddLicenseRequest request = new Persona.AddLicenseRequest();
        request.personaId = personaId;
        request.licenses = licenses;
        Persona.LicenseService.addPackageLicense1(request);
    }

    @AuraEnabled
    public static void addCopadoLicense1(String personaId, List<String> licenses) {
        Persona.AddLicenseRequest request = new Persona.AddLicenseRequest();
        request.personaId = personaId;
        request.licenses = licenses;
        Persona.LicenseService.addCopadoLicense1(request);
    }

    @AuraEnabled
    public static void addPackageLicense2(String personaId, List<String> licenses) {
        Persona.AddLicenseRequest request = new Persona.AddLicenseRequest();
        request.personaId = personaId;
        request.licenses = licenses;
        Persona.LicenseService.addPackageLicense2(request);
    }

    @AuraEnabled
    public static void addCopadoLicense2(String personaId, List<String> licenses) {
        Persona.AddLicenseRequest request = new Persona.AddLicenseRequest();
        request.personaId = personaId;
        request.licenses = licenses;
        Persona.LicenseService.addCopadoLicense2(request);
    }

    @AuraEnabled
    public static void removePackageLicense1(String personaId, List<String> licenses) {
        Persona.RemoveLicenseRequest request = new Persona.RemoveLicenseRequest();
        request.personaId = personaId;
        request.licenses = licenses;
        Persona.LicenseService.removePackageLicense1(request);
    }

    @AuraEnabled
    public static void removeCopadoLicense1(String personaId, List<String> licenses) {
        Persona.RemoveLicenseRequest request = new Persona.RemoveLicenseRequest();
        request.personaId = personaId;
        request.licenses = licenses;
        Persona.LicenseService.removeCopadoLicense1(request);
    }

    @AuraEnabled
    public static void removePackageLicense2(String personaId, List<String> licenses) {
        Persona.RemoveLicenseRequest request = new Persona.RemoveLicenseRequest();
        request.personaId = personaId;
        request.licenses = licenses;
        Persona.LicenseService.removePackageLicense2(request);
    }

    @AuraEnabled
    public static void removeCopadoLicense2(String personaId, List<String> licenses) {
        Persona.RemoveLicenseRequest request = new Persona.RemoveLicenseRequest();
        request.personaId = personaId;
        request.licenses = licenses;
        Persona.LicenseService.removeCopadoLicense2(request);
    }
}