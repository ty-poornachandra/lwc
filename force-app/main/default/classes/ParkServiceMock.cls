@isTest
global class ParkServiceMock implements WebServiceMock {
    global void doInvoke(Object stub,Object request,Map<String,Object> response,String endPoint,String soapAction,
                         String requestName,String responseNS,String responseNam,String responseType){
         ParkService.byCountryResponse response_x = new  ParkService.byCountryResponse();
                             response_x.return_x = new List<String>{'Yellowstone','National Park'};
                                 response.put('res',response_x);
    }
}