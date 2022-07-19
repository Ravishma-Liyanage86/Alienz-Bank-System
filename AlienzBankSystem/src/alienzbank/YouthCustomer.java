package alienzbank;

public class YouthCustomer {


	
	private int id ;
	private String  fName;
	private String  lname;
	private String  dob;     
	private String  gender;   
	private String  address;  
	private String  nic;      
	private String  phoneno;
	private String  email;  
	private String  acno;      
	private String  branch;   
	private String  acType;    
	private String  uname;     
	private String  password ;
	
	int loanid ;
	String  fullName ;    
	String  cNic ;    
	String  accountType;     
	String  amount;    
	String  time ;
	String  institute;
	String  bName;
	String  job ;
	String  salary;
	
	public YouthCustomer(int id, String fName, String lname, String dob, String gender, String address, String nic,
			String phoneno, String email, String acno, String branch, String acType, String uname, String password) {
	
		this.id = id;
		this.fName = fName;
		this.lname = lname;
		this.dob = dob;
		this.gender = gender;
		this.address = address;
		this.nic = nic;
		this.phoneno = phoneno;
		this.email = email;
		this.acno = acno;
		this.branch = branch;
		this.acType = acType;
		this.uname = uname;
		this.password = password;
	}
	public YouthCustomer(int loanid, String fullName, String cNic, String accountType, String amount, String time,
			String institute, String bName, String job, String salary) {
		
		this.loanid = loanid;
		this.fullName = fullName;
		this.cNic = cNic;
		this.accountType = accountType;
		this.amount = amount;
		this.time = time;
		this.institute = institute;
		this.bName = bName;
		this.job = job;
		this.salary = salary;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAcno() {
		return acno;
	}
	public void setAcno(String acno) {
		this.acno = acno;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getAcType() {
		return acType;
	}
	public void setAcType(String acType) {
		this.acType = acType;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getLoanid() {
		return loanid;
	}
	public void setLoanid(int loanid) {
		this.loanid = loanid;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getcNic() {
		return cNic;
	}
	public void setcNic(String cNic) {
		this.cNic = cNic;
	}
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getInstitute() {
		return institute;
	}
	public void setInstitute(String institute) {
		this.institute = institute;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	
}
