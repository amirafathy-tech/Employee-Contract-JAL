// sap.ui.define([
//     "sap/ui/core/mvc/Controller"
// ], (Controller) => {
//     "use strict";

//     return Controller.extend("employeecontract.controller.View1", {
//         onInit() {
//         }
//     });
// });

sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast"
  ], function (Controller, MessageToast) {
    "use strict";
  
    return Controller.extend("employeecontract.controller.View1", {
  
        onApplyAction: async function (oEvent) {
            const oItem = oEvent.getSource().getParent().getParent().getBindingContext();
            const oSelectedAction = oEvent.getSource().getParent().getItems()[0].getSelectedKey();
            const oModel = this.getView().getModel();
          
            const employeeID = oItem.getProperty("ID");
            console.log(employeeID);
            console.log(oSelectedAction);
            console.log(oItem);
            console.log(oModel);
            


            // oModel.callAction(sAction, {
            //     method: "POST",
            //     parameters: oPayload,
            //     success: function (data) {
            //       MessageToast.show("Action applied successfully");
            //     },
            //     error: function (err) {
            //       MessageToast.show("Error applying action");
            //       console.error(err);
            //     }
            //   });
              
            
          
            let sAction, oParams;
          
            switch (oSelectedAction) {
              case "renew":
                sAction = "/ContractRenewal(...)";
                oParams = { employeeID };
                break;
              case "nonrenew":
                sAction = "/NonRenewal(...)";
                oParams = { employeeID };
                break;
              case "renew_change":
                sAction = "/RenewalWithStatusChange(...)";
                oParams = {
                  employeeID,
                  newType: "6 months"
                };
                break;
              default:
                MessageToast.show("Select a valid action");
                return;
            }
          
            try {
              const oContext = oModel.bindContext(sAction, null, {
                parameters: oParams
              });
          
              await oContext.execute();
              const result = oContext.getBoundContext().getObject();
              MessageToast.show(result.value || "Action applied successfully");
            } catch (err) {
              MessageToast.show("Error applying action");
              console.error(err);
            }
          }
          
    });
  });
  