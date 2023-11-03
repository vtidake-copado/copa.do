@isTest
public class ctx_StaticConstantsTest {
    
    public static testmethod void testConstants(){
        Assert.areEqual('one', ctx_StaticConstants.STRING_NR_ONE);
        Assert.areEqual('two', ctx_StaticConstants.STRING_NR_TWO);
        Assert.areEqual('three', ctx_StaticConstants.STRING_NR_THREE);
        Assert.areEqual('four', ctx_StaticConstants.STRING_NR_FOUR);
        Assert.areEqual('five', ctx_StaticConstants.STRING_NR_FIVE);
        Assert.areEqual('six', ctx_StaticConstants.STRING_NR_SIX);
        Assert.areEqual('seven', ctx_StaticConstants.STRING_NR_SEVEN);
        Assert.areEqual('eight', ctx_StaticConstants.STRING_NR_EIGHT);
        Assert.areEqual('nine', ctx_StaticConstants.STRING_NR_NINE);
        Assert.areEqual('ten', ctx_StaticConstants.STRING_NR_TEN);
        
    }
}