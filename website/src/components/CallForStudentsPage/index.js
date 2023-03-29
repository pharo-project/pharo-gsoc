import React, { useEffect } from 'react';
import * as ROUTES from '../../constants/routes';

export default function CallForStudentsPage() {
  useEffect(() => {
    document.title = "Pharo GSoC";  
  }, []);

  return(
    <div className="container">
      <h1>Google Summer of Code 2023: Call for Students</h1>

      <p>Dear students,</p>

      <p>We are happy to announce that once again, Pharo Consortium is looking for smart and enthusiastic students to work with us during Google Summer of Code 2023. In the following sections, we explain the program requirements and provide a detailed description of the application process. This text is based on the <a href="https://summerofcode.withgoogle.com/rules/">Google Summer of Code 2023 Program Rules</a>. We strongly suggest that you read the original rules. In case of any disagreement between this document and the Rules, the Rules should prevail.</p>

      <p>If you have any additional questions, feel free to send an email to any of the organizers listed at the bottom of this page.</p>

      <h2>1. What is GSoC?</h2>

      <p>Google Summer of Code (GSoC) is a global program focused on introducing students to open source software development. Students work on programming project with an open-source organization during their break from university for 12+ weeks. You can read more about the program on its <a href="https://summerofcode.withgoogle.com/">official website</a>. We want to emphasize the following:</p>

      <ul>
        <li>The length of time allowed to complete a project can range from 10 weeks to 22 weeks.</li>
        <li>The standard length will be 12 weeks, while it can be extended.</li>
        <li>The active part of the program starts on <code>May 4</code> for everybody.</li>
        <li>The first period of the program <code>(May 4 - May 28)</code> is called the community bonding period. During this time, you will be introduced to our community, get comfortable with our communication channels (Discord and mailing lists), get to know your mentors, prepare a detailed timeline for the summer, etc.</li>
        <li>The coding period begins on <code>May 29</code> for everybody.</li>
        <li>During the coding period you will be working on your projects, regularly communicating with your mentors, writing blog posts, etc.</li>
        <li>Standard coding period ends on <code>August 28</code>.</li>
        <li>After the end of the standard coding phase, contributors with standard timeline enter the evaluation phase. The following week August 29 to September 4 is reserved for evaluation by mentors which results with initial results announcements <code>(September 5)</code>.</li>
        <li>Contributors with the extended timeline, continue coding in period September 4 - November 6, which is followed by submission of final product (November 6) and mentor reporting <code>(November 13)</code>.</li>
        <li>During its active part, GSoC should be treated as a full-time job. If you have more than a few hours a week of extra commitments, you probably should skip GSoC; it is unlikely that you will be successful. In any case, be completely clear about outside time commitments as part of your proposal.</li>
        <li>Accepted students will be receiving a stipend (payment) from Google in two parts: <code>45% on July 14 and 55% on September 5</code>. Stipend amounts are calculated based on your residency country during the program and the length of the program (standard or extended). Check the info on <a href="https://developers.google.com/open-source/gsoc/help/student-stipends">the website</a>.</li>
        <li>GSoC participants are considered independent developers paid by a stipend and are not employed by Google or GSoC Organization.</li>
      </ul>

      <h2>2. What is Pharo?</h2>

      <p>Pharo is a dynamic, purely object-oriented programming language (everything is an object) in the tradition of Smalltalk. But it is also a robust development environment, focused on simplicity and immediate feedback. Its full syntax fits on a postcard, and coding can be done directly in the debugger. Pharo has super cool tools that empower you and make you highly efficient.</p>

      <p>Pharo's goal is to deliver a clean, innovative, free and open-source immersive environment. By providing a stable and small core system, excellent development tools, and maintained releases, Pharo is an attractive platform to build and deploy mission-critical applications.</p>

      <p>Pharo fosters a healthy ecosystem developed from private and commercial contributors who advance and maintain its core system and external packages.
        More information about Pharo is available at <a href="http://www.pharo.org/">http://www.pharo.org/</a>.</p>

      <h2>3. Eligibility criteria</h2>

      <p>To apply for Google Summer of Code with Pharo Consortium, you must satisfy the Eligibility Criteria for students found in the corresponding section of the <a href="https://summerofcode.withgoogle.com/rules/">Program Rules</a>.</p>

      <p>We want to emphasize that every applicant must be:</p>

      <ul>
        <li><strong>eighteen (18) years of age or older</strong> upon registration for the program.</li>
        <li>an open source beginner or a student.</li>
        <li>eligible to work in the country in which they reside for the duration of the program.</li>
      </ul>

      
      <p>while applicants must <strong>not</strong> be</p>

      <ul>
        <li>a resident of a country currently embargoed by the United States.</li>
        <li>contractor of Google or its affiliate.</li>
        <li>contractor of the Mentoring Organization or its affiliates.</li>
        <li>an Organization Administrator or Mentor in the program.</li>
      </ul>


      <h3>3.1. Strongly preferred by Pharo Consortium</h3>

      <ul>
        <li>Good knowledge of OOP.</li>
        <li>Basic idea about Pharo & Smalltalk syntax and ongoing projects.</li>
        <li>Experience with Pharo & Smalltalk.</li>
      </ul>

      <h2>4. Before applying (how to increase your chances of being accepted)</h2>

      <ul>
        <li>Check the <a href={ROUTES.IDEAS}>list of project ideas</a>.</li>
        <li>Select one or two projects that you find interesting and think you have the right set of skills.</li>
        <li>Don’t be afraid to apply to projects where you only meet 51% of the listed requirements. Include a section on how you’ll compensate for or learn the missing skills — and demonstrate during the application process that you are working on acquiring those new skills.</li>
        <li>Join the Pharo Discord channel (follow the <a href="https://pharo.org/community">instructions</a>), go to the <a href="https://discordapp.com/channels/223421264751099906/359772042532487170">#gsoc-students channel</a> and introduce yourself. Write who you are, where you come from, your interests, and which projects you would like to work on. Talk to other students, ask them questions, and get to know them. If you have trouble joining Discord, feel free to send a letter to any of the program organizers whose email addresses are listed at the bottom of this page.</li>
        <li>Get in touch with the mentors assigned to the projects you are interested in by email or Discord. You can find the email addresses of all our mentors in the <a href={ROUTES.IDEAS}>list of project ideas</a>. Talk to them about the complexity and skills required for the different projects.</li>
        <li>During the selection process, we will pay special attention to your experience with OOP and knowledge of Pharo. If you are new to Pharo, use the time you have before selection to enrich your portfolio. Read several chapters of <a href="https://books.pharo.org/pharo-by-example9/">Pharo by Example book</a> or take the <a href="https://mooc.pharo.org/">Pharo MOOC</a> - videos, exercises, challenges, and mini-projects. But most importantly, write something cool in Pharo and put it on your GitHub. It can be a simple project or exercise. If we see that you can write code and do it well, this will increase your chances of being accepted.</li>
        <li>If you have a personal technical blog, this will also increase your chances. If you don’t have it, now is an excellent time to start. Write about the things you learn or the projects you work on. For example, you can write about your experience learning Pharo and describe some simple project you implemented (such as linear regression, tic-tac-toe game, or linked list).</li>
        <li>Interact with Pharo Community. Ask and answer questions on Discord, join our <a href="https://pharo.org/community">mailing lists</a>. Participate in our <a href="https://pharo.org/contribute-events">monthly sprints</a>. Try fixing some bugs, open some relevant issues, suggest changes or additional features (see Pharo's <a href="https://github.com/pharo-project/pharo/issues">issue tracker</a>). The better the contributions, the better are the chances of selection.</li>
        <li><b>IMPORTANT:</b> Start working on your project proposal (see the section on how to apply) as soon as possible. The proposal is an extensive and detailed document that has to be carefully and diligently prepared. So contact the mentors right away and start working on your proposal.</li>
      </ul>

      <p><b>HINT:</b> If you have a project idea that is not on the Idea List, negotiate it with the community, it may be of interest, and mentors might be found.</p>

      <h3>4.1. Things to remember</h3>

      <p>Although we pay great attention to your technical skills, <b>communication skills are way more important</b>. We must see that you can work remotely, be active on forums, not be afraid to ask questions or express your opinion. Students who are active in our communication channels have a higher chance of being selected.</p>

      <p>Be proactive - <b>do not wait to be told what to do</b>. Your mentors are here to answer your questions, help you get unstuck, make sure that you are on track. But they will not give you step-by-step instructions or make decisions for you. Show us that you can take the initiative in your own hands and work independently even when your mentors are not there to help you (although we will try to make sure that they always are). Show us that you have been working on some projects outside the classroom, especially projects that you did "for fun".</p>

      <h2>5. How to apply?</h2>

      <p>To <a href="https://summerofcode.withgoogle.com/get-started">apply for Google Summer of Code</a>, you must:</p>

      <ol>
        <li>Accept the terms of the Student Participant Agreement</li>
        <li>Submit a Project Proposal</li>
      </ol>

      <p><b>The application period is <code>March 20, 18:00 UTC - April 4, 18:00 UTC</code></b>. Be sure to check the complete <a href="https://developers.google.com/open-source/gsoc/timeline">timeline of Google Summer of Code 2023</a>.</p>

      <h3>5.1. Writing a project proposal</h3>

      <ul>
        <li>Take a look at the <a href={ROUTES.IDEAS}>list of ideas</a> proposed by the Pharo Community. You can take any one of these topics or suggest your own. However, you must make sure that:</li>
        <ul>
          <li>There are at least two mentors in the community willing to work with you on the proposed project. So get in touch with mentors early and discuss your ideas with them.</li>
          <li>The proposed project is interesting and relevant to the community. All projects in our list of ideas were selected by the community and represent something we want to have in Pharo. So if you propose your own project, make sure to discuss your idea on the mailing list and Discord and see if people need it.</li>
        </ul>
        <li>Follow the <a href="https://google.github.io/gsocguides/student/writing-a-proposal#the-basics">instructions for writing a project proposal</a>.</li>
        <li>As an example, take a look at <a href="https://drive.google.com/drive/folders/1oAmutbsbOCHLvdkQleVDvYtHZs9OxhMR?usp=sharing">project proposals that were accepted by Pharo Consortium in previous years</a>.</li>
        <li>Don’t write your project proposal alone. As soon as you have the first draft (no matter how bad you think it is), send it to the mentors and preferably to the mailing list and the dedicated channel on Discord. High-quality proposals are written iteratively: <i>draft - get feedback - update - get feedback - update ...</i></li>
        <li>Submit your proposal early; you can update your draft on the GSoC website later. But be careful not to miss the <a href="https://developers.google.com/open-source/gsoc/timeline">deadline</a>.</li>
      </ul>

      <h2>6. What will be the main responsibilities of accepted students?</h2>

      <p>Accepted students have the responsibilities to:</p>

      <ul>
        <li>Follow the plan declared in your project proposal.</li>
        <li>Submit daily reports of your progress to our mailing list (what did you do today, what do you plan to do tomorrow, what problems or questions do you have).</li>
        <li>Write a blog post every week to document your work and report your progress to the community.</li>
        <li>Regularly communicate with your mentors and the broader community.</li>
        <li>Ask for help when something is preventing you from achieving a goal.</li>
        <li>Re-evaluate work scope when you are significantly ahead of expectations.</li>
        <li>Inform when work capacity will be reduced, as early as possible (e.g., family, health, other work).</li>
      </ul>

      <p>Read more about <a href="https://developers.google.com/open-source/gsoc/help/responsibilities">student responsibilities</a>.</p>

      <h2>7. Conclusion</h2>

      <p>You can read the following blog posts written by students who have completed the Google Summer of Code with Pharo Consortium in previous years:</p>

      <ul>
        <li>Balaji G, <a href="https://balaji612141526.wordpress.com/2021/06/21/gsoc-2021-with-pharo/"> GSoC 2021 final report: Statistical Data Analysis in Pharo using DataFrame</a></li>
        <li>Laurine Dargaud, <a href="https://gsoc.ldargaud.fr/final-evaluation"> GSoC 2021: Spatial data in Pharo</a></li>
        <li>Alejandra Cossio, <a href="https://alecossioch.github.io/gsoc21/">Refining Code Critics: My GSoC 2021 project</a></li>
        <li>Oleksandr Zaytsev, <a href="https://medium.com/@i.oleks/how-to-apply-for-google-summer-of-code-95c1bfcd41a5">How to Apply to Google Summer of Code</a></li>
        <li>Myroslava Romaniuk, <a href="https://medium.com/@myroslavarm/experiencing-google-summer-of-code-2017-4ccf16790c9e">Experiencing Google Summer of Code 2017</a></li>
        <li>Rajula Vineet Reddy, <a href="https://vineetreddy.wordpress.com/2017/08/28/google-summer-of-code-2017-final-report-pharo-consortium-rajula-vineet-reddy/?fbclid=IwAR0i5NW8zUY3MPeSTrY5BktYlqJe06LZvj_FfBfWMaB_rx2WOfMg_sbIaY4">Google Summer of Code 2017 Final Report – Pharo Consortium</a></li>
        <li>Rajula Vineet Reddy, <a href="https://vineetreddy.wordpress.com/2018/01/14/google-summer-of-code-all-the-whats-hows-whys/?fbclid=IwAR11UyBQ4s1W4qRngIJzJXdjimc48NGzQJy8DcKDpfe-DlfAbA-YmqbAbB8">Google Summer of Code – All the What’s, How’s & Why’s</a></li>
        <li>Nina Medić and Smiljana Knežev, <a href="https://pharokeepers.github.io/">Pharokeepers in GSoC 2019</a></li>
      </ul>

      <p>We are looking forward to great talent joining our organisation this summer.</p>

      <p>Warm Regards, Pharo Organisation Admins:</p>

      <ul>
        <li>Sebastian Jordan &#60;<a href="mailto:sebastian.jordan@inria.fr">sebastian.jordan@inria.fr</a>&#62;</li>
        <li>Oleksandr Zaytsev &#60;<a href="mailto:olk.zaytsev@gmail.com">olk.zaytsev@gmail.com</a>&#62;</li>
        <li>Serge Stinckwich &#60;<a href="mailto:serge.stinckwich@gmail.com">serge.stinckwich@gmail.com</a>&#62;</li>
        <li>Juan Pablo Sandoval Alcocer &#60;<a href="mailto:juampiboy@gmail.com">juampiboy@gmail.com</a>&#62;</li>
        <li>Gordana Rakić &#60;<a href="mailto:goca.rakic@gmail.com">goca.rakic@gmail.com</a>&#62;</li>
      </ul>

    </div>
  );
}
