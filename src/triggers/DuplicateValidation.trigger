trigger DuplicateValidation on Account (before insert) {
    List<PartnerNetworkRecordConnection> lst = [select id from PartnerNetworkRecordConnection where localrecordid=: trigger.new[0].id];
    if(lst!=null && lst.size()>0) {
        insert new Prospect__c(Name='Done');
    }
}