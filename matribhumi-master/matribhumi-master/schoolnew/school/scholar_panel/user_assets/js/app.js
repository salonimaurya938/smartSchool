const questionNumber=document.querySelector(".question-number");
const questionText=document.querySelector(".question-text");
const optionContainer=document.querySelector(".option-container");
const answersIndicatorContainer=document.querySelector(".answers-indicator");
const homeBox=document.querySelector(".home-box");
const quizBox=document.querySelector(".quiz-box");
const resultBox=document.querySelector(".result-box");

let questionCounter=0;
let currentQuestion;
let availableQuestions=[];
let availableOptions=[];
let correctAnswers=0;
let attempt=0;


//push the questions into availableQuestions Array
function setAvailableQuestions()
{
	const totalQuestion=quiz.length;
	for(let i=0;i<totalQuestion;i++)
	{
		availableQuestions.push(quiz[i])
		
	}
}
function getNewQuestion(){
	// set question Number
	questionNumber.innerHTML = "Question " + (questionCounter + 1)+" of " + quiz.length;
	//set question text
	//get random question 
	const questionIndex=availableQuestions[Math.floor(Math.random()*availableQuestions.length)];
	currentQuestion=questionIndex;
	questionText.innerHTML=currentQuestion.q;
	//get the possition of questionIndex from the availableQuestions Array 
	const index1=availableQuestions.indexOf(questionIndex);
	//remove the  questionIndex from the availableQuestions Array ,so that the question does not repeat
	availableQuestions.splice(index1,1);
	//set option-container
	// get the length of option 
	
	const optionLen=currentQuestion.options.length;
	//push the option into availableOptions.options Array
	for(let i=0;i<optionLen;i++)
	{
		availableOptions.push(i);
	}
	optionContainer.innerHTML = '';
	let animationDelay=0.15;
	//create options in html
	for(let i=0;i<optionLen;i++){
			//random option
			const optonIndex = availableOptions[Math.floor(Math.random()*availableOptions.length)];
			//get the possition of optonIndex from the availableOptions array
			const index2=availableOptions.indexOf(optonIndex);
			//remove the  questionIndex from the availableQuestions Array ,so that the question does not repeat
	        availableOptions.splice(index2,1);
		    //console.log(optonIndex)
			const option =document.createElement("div");
			option.innerHTML=currentQuestion.options[optonIndex];
			option.id=optonIndex;
			option.style.animationDelay = animationDelay + 's';
			animationDelay =animationDelay + 0.15;
			option.className="option";
			optionContainer.appendChild(option);
			option.setAttribute("onclick","getResult(this)");
		}
	
	//console.log(availableOptions)
	questionCounter++;
}
//get the result of current attempt question
function getResult(element){
	const id=parseInt(element.id);
	//get the answer by compairing the id of clicked option
	if(id === currentQuestion.answer){
    //set the green color to the correct option
		element.classList.add("correct");
		//add the indicater  to correct marks 
		updateAnswerIndicator("correct");
		correctAnswers++;
		
	}
	else{
		//set the red color to the wrong option
		element.classList.add("wrong");
		updateAnswerIndicator("wrong");
		//if the answer is incorrect show the correct option by adding green color the correct 
		const optionLen=optionContainer.children.length;
		for(let i=0;i<optionLen; i++)
		{
			if(parseInt(optionContainer.children[i].id)===currentQuestion.answer){
				optionContainer.children[i].classList.add("correct");
			}	
		}
	}
	attempt++;	
	unclickableOptions()
}
	//make all the options unclickableOptions onnce the user select a option
	//Restrict the user to change the option again
    
	function unclickableOptions()
	{
		const optionLen = optionContainer.children.length;
		for(let i=0;i<optionLen;i++){
		optionContainer.children[i].classList.add("already-answered");
		}
	}	
function answersIndicator(){
	answersIndicatorContainer.innerHTML ='';
	const totalQuestion = quiz.length;
	for(let i=0;i<totalQuestion;i++){
		const indicator=document.createElement("div");
		answersIndicatorContainer.appendChild(indicator);
	}
}
function updateAnswerIndicator(markType)
{
	answersIndicatorContainer.children[questionCounter-1].classList.add(markType);
//console.log(markType);	
}
	
function next(){
	
	if(questionCounter === quiz.length)
	{
		quizOver();
	}
	else{
		getNewQuestion();
	}	
}

function quizOver()
{
//hide quiz quizBox
quizBox.classList.add("hide");	
//show result box;
resultBox.classList.remove("hide");
quizResult();
}
//get the quiz result 
function quizResult(){
	resultBox.querySelector(".total-question").innerHTML = quiz.length;
	resultBox.querySelector(".total-attempt").innerHTML = attempt;
	resultBox.querySelector(".total-correct").innerHTML = correctAnswers;
	resultBox.querySelector(".total-wrong").innerHTML = attempt - correctAnswers;
	const percentage =(correctAnswers/quiz.length)*100;
	resultBox.querySelector(".percentage").innerHTML = percentage.toFixed(2) + "%";
	resultBox.querySelector(".total-score").innerHTML = correctAnswers +" / "+ quiz.length;
}
function resetQuiz(){
	questionCounter=0;
	correctAnswers=0;
	attempt=0;
}
function tryAgainQuiz(){
	//hide the resultBox
	resultBox.classList.add("hide");
	//hide the resultBox
	resultBox.classList.remove("hide");
	resetQuiz();
	startQuiz()
}
function goToHome(){
	//hide the resultBox
	resultBox.classList.add("hide");
	//show the home box 
	homeBox.classList.remove("hide");
	resetQuiz();
}
// ####STARTING POINT####

function startQuiz(){
	//hide home box
	homeBox.classList.add("hide");
	//show quiz box
	quizBox.classList.remove("hide");
	
	//first we will set all question in avaliableQuestion Array
	setAvailableQuestions();
	//second we will call getQuestion(); function 
	 getNewQuestion();
	 //to create indicater of answer 
	 answersIndicator(); 
}
window.onload = function(){
	homeBox.querySelector(".total-questions").innerHTML = quiz.length;
}

