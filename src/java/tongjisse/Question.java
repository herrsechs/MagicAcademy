package tongjisse;
//This class contains info of question, include description of problem and options.
public class Question {
	private String quesBody;
	private String[] option;
	public enum opt  {A, B, C, D}
	public String getQuesBody() {
		return quesBody;
	}
	public void setQuesBody(String quesBody) {
		this.quesBody = quesBody;
	}
	public String[] getOption() {
		return option;
	}
	public void setOption(String[] option) {
		this.option = option;
	};
	public String getOptA(){
		return this.option[opt.A.ordinal()];
	}
	public String getOptB(){
		return this.option[opt.B.ordinal()];
	}
	public String getOptC(){
		return this.option[opt.C.ordinal()];
	}
	public String getOptD(){
		return this.option[opt.D.ordinal()];
	}
}
