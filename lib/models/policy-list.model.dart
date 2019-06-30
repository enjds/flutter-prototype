class PolicyListViewModel {
  final String policyName;
  final String policyNo;
  final String policyStatus;
  final String sumAssured;
  final String surrenderValue;
  final String premiumDueDate;
  final String contributionAmount;
  final String fundBalance;
  final String amountOfBenefit;
  final String cashValue;


  PolicyListViewModel(
    this.policyName,
    this.policyNo,
    this.policyStatus,
    this.sumAssured,
    this.surrenderValue,
    this.premiumDueDate,
    this.contributionAmount,
    this.fundBalance,
    this.amountOfBenefit,
    this.cashValue
  );

  PolicyListViewModel.fromJson(Map<String, dynamic> json) : 
    policyName = json['policyName'],
    policyNo = json['policyNo'],
    policyStatus = json['policyStatus'],
    sumAssured = json['sumAssured'],
    surrenderValue = json['surrenderValue'],
    premiumDueDate = json['premiumDueDate'],
    contributionAmount = json['contributionAmount'],
    fundBalance = json['fundBalance'],
    amountOfBenefit = json['amountOfBenefit'],
    cashValue = json['cashValue'];

  Map<String, dynamic> toJson() => {
    'policyName' : policyName,
    'policyNo' : policyNo,
    'policyStatus' : policyStatus,
    'sumAssured' : sumAssured,
    'surrenderValue' : surrenderValue,
    'premiumDueDate' : premiumDueDate,
    'contributionAmount' : contributionAmount,
    'fundBalance' : fundBalance,
    'amountOfBenefit' : amountOfBenefit,
    'cashValue' : cashValue 
  };

}