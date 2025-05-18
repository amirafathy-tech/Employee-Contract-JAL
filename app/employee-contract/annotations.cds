using ContractService as service from '../../srv/services';

using my.company as my;

annotate my.Employee with {
  ID            @UI.LineItem;
  name          @UI.LineItem;
  email         @UI.LineItem;
  contractEndDate @UI.LineItem;
  contractType  @UI.LineItem;
  status        @UI.LineItem;
}
