const para=
[
`
Language is our major means of communication. it is how we share our thoughts with others. A language’s secondary purpose is to convey someone’s sentiments, emotions, or attitudes. English is one such language in the world that satisfies both the above purposes. English has been regarded as the first global Lingua Franca. It has become part and parcel of almost every existing field. We use it as the international language to communicate in many fields ranging from business to entertainment.
Many countries teach and encourage youngsters to acquire English as a second language. Even in nations where English is not an official language, many science and engineering curriculum are written in English.
English abilities will most certainly aid you in any business endeavours you choose to pursue. Many large corporations will only hire professional employees after determining whether or not they speak good English. Given the language’s prominence, English language classes will be advantageous to you if you want to work for a multinational organization and will teach you the communication skills needed to network with professionals in your area or enhance your career.
The English Language opens an ocean of career opportunities to those who speak this language anywhere in the world. Similarly, it has turned into an inevitable requirement for various fields and professions like medicine, computing and more.
In the fast-evolving world, it is essential to have a common language that we can understand to make the best use of the data and information available. As a result, the English Language has become a storehouse of various knowledge ranging from social to political fields.
`,
    
`
While the reasons for travelling are many, we must not forget that it can be a refreshing experience. Travelling is an experience that can teach us so many things that you cannot possibly learn while living at home.
Firstly, it teaches you how to make new friends. The world is full of people who love interacting. You get to make friends when you travel to new places and spend quality time with them.
Moreover, it also helps you enhance your social skills. After that, travelling is great for learning new skills. For instance, going to mountain regions teaches you how to trek. Similarly, going to beaches helps you learn scuba diving or surfing.
You can also enjoy the beauty of nature when you travel. Similarly, you get to explore nature like never before and find discover the earth’s beauty. Travelling also helps us understand people.
After you spend time at a new place, you interact with the local people of the place. You learn so much about them and their culture. It makes you more open-minded and be mindful of the culture and beliefs of different people.
`,
    
`
Picnics are very important as they add pleasantness to our lives. There are different kinds of picnics that people can enjoy. There are family picnics, school picnics, church picnics, union picnics, and more.
Picnics make our existence smooth and take us out of our daily routine. Moreover, picnics tend to bring out the best in us. We are able to enjoy physically as well as mentally in picnics.
This picnic essay tells you how they are a great way of bringing people together. Whether it is your family or your friends, everyone forms a bond at picnics. It is great for emotional bonding.
Moreover, it gives us a chance to speak out our minds and unwind and relax. Further, we also get to enjoy physical activities during picnics. The walks and games are beneficial to our body and improve our stamina too.
`,
    
`
India is a unique country that harbours different kinds of people that speak different languages, eat different foods and wear a variety of clothes. What makes our country special is that despite so many differences, people always live together in peace.
Our country, India, lies in South Asia. It is a large country that is home to approximately 139 crore people. Moreover, India is also the biggest democracy in the whole world. Having one of the oldest civilizations, it is a very rich country.
Our country has fertile soil that makes it the largest wheat producer in the whole world. India has given birth to famous personalities in the field of literature and science. For instance, Rabindranath Tagore, CV Raman, Dr Abdul Kalam, and others are Indians.
It is a country that is home to thousands of villages. Similarly, the fields of India are fed by the mighty rivers. For instance, Ganga, Kaveri, Yamuna, Narmada, and more are rivers of India.
Most importantly, the coasts of our country are guarded by the deep oceans and the mighty Himalayas are our natural frontiers. Being a secular state, India has a variety of religions that prosper happily together.
`,
    
`
There are some people only who understand how important knowledge is. While every educated person may not be intelligent, it is true that every qualified person has an education.
It may seem like a strange statement but it is true. When you have the treasure of knowledge, you can drive a car or even fly an aeroplane. Similarly, you can crack puzzles and solve riddles with knowledge.
Therefore, it allows you to do the little as well as big things. When you have the knowledge, you can stop yourself from falling into the same trap. Also, you cannot buy knowledge. It is very essential to note this in this essay on knowledge is power.
It is a treasure that cannot be bought. You gain it and you earn it with your hard work. Therefore, the real gem is that of knowledge that will make you a successful person in life and help you gain power and respect.
`,
    
    
`
Guru Nanak Dev is the first guru of Sikhs. Similarly, the Sikhs consider him to be the founder of Sikhism. Guru Nanak Jayanti is a very big day for those who follow Sikhism. They celebrate the day to remember and pay gratitude to Guru Nanak Dev.
People respect him immensely for his great contributions to humanity. Moreover, various states of India observe his birthday as a public holiday. On this day, people remember the teachings of Guru Nanak and recite them in his memory.
As the Sikh religion is spread throughout the world, people belonging to it celebrate the day like a festival with a lot of joy and happiness. Sikhs commemorate this day to remember the essential teachings of Guru Nanak and follow them rigorously.
They pay respect to their Guru who went to a lot of places to teach people how to live in harmony as well as peace. Similarly, it was Guru Nanak who started to provide langar kitchens i.e. community kitchens, to the people.
By arranging a langar kitchen, Guru Nanak aimed to eradicate inequality and differences that were prevalent in our society at that time. Further, the kitchen serves as a great way of promoting brotherhood and love amongst humans irrespective of caste, creed, religion, gender, class, etc.
Therefore, the celebration of Gurpurab is no less than a homage to a person who dedicated his entire life to work for the welfare of the people. In addition, he also offered us a valuable set of teaching to make the world a better place.

`,       
];

 const typingText =document.querySelector(".typing-text p");
 
 export let inputField=document.querySelector(".input-field");
 export  let mistakeD=-1;
 let charIndex=0;
let wpmD=document.querySelector(".word-min p");
let cpmD=document.querySelector(".Character-min p");
let accuracyD=document.querySelector(".accuracy p");
let resultMistakes=document.querySelector("#rMistakes");
let resultSpeed=document.querySelector("#rWpm");
let resultNetWpm=document.querySelector("#rNwpm");
let resultAccuracy=document.querySelector("#rAccuracy");

export function randomParagraph()
{
    let randIndex=Math.floor(Math.random() * para.length);
    para[randIndex].split("").forEach(span =>    
    {
       let spanTag=`<span>${span}</span>`;
       typingText.innerHTML +=spanTag;
    });


//typingText.addEventListener("click",()=>inputField.focus());
inputField.focus();

}
 
export function initTyping()
{
    var sTime = document.querySelector("#custom-time").value;
    const characters=typingText.querySelectorAll("span");
    let typedChar = inputField.value.split("")[charIndex];
//    if user not typed any char and press backspace
    if(typedChar == null)
    {
       charIndex--;
       if(characters[charIndex].classList.contains("incorrect"))
       {
           mistakeD--;
       }
       characters[charIndex].classList.remove("correct","incorrect"); 
    }
    else
    {
      if(characters[charIndex].innerText===typedChar)
    {
        characters[charIndex].classList.add("correct");  
    }
    else
    {
        mistakeD++;
        characters[charIndex].classList.add("incorrect");      
    }
    charIndex++;  
  
    }
    characters.forEach(span=>span.classList.remove("active"));
    characters[charIndex].classList.add("active");
    
    //Some terms calculation
    let wpm=Math.round(charIndex/5);
    let nwpmSpeed=Math.round(((charIndex-mistakeD)/5)/sTime);
    let wpmSpeed=Math.round(wpm/sTime);
    let accuracy=Math.round((((charIndex-mistakeD)/5)/wpm)*100);
    accuracy=accuracy <0 || accuracy == Infinity ? 0: accuracy;
    let displayaccuracy=accuracy+"%";
    wpmSpeed=wpmSpeed <0 || !wpm || wpm == Infinity ? 0: wpmSpeed;
//    displaying number on screen
    
    wpmD.innerText=wpm;
    cpmD.innerText=charIndex-1;
    accuracyD.innerText=accuracy;
    resultMistakes.innerText=mistakeD;
    resultSpeed.innerText=wpmSpeed;
    resultNetWpm.innerText=nwpmSpeed;
    resultAccuracy.innerText=displayaccuracy;
}


