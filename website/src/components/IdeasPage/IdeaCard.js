import React from "react"
import * as URLS from '../../constants/urls'
import logo from '../../img/logo-big.png'

const shorten = (text, maxlength) => {
  if (text.length <= maxlength) return text;

  const singleLineText = text.replace(/\s/g, " ");
  const words = singleLineText.split(" ");

  var count = 0;
  var sum = 0;

  while (sum <= maxlength)
    sum += words[count++].length;

  var shortened = words.slice(0, count-1).join(" ");

  return shortened + " (...)";
}

export default function IdeaCard({
  idea,
  children,
}) {
  const { id, title, description, img, goal, url, supervisors, skills, size, difficulty } = idea;
  const link = id;

  return (
    <div id={title.replace(/\W/g, '_')} className={"ideaCard"}>
      <div className={"header"}>
        {img &&
          <div className={"projectLogo"}>
            <a href={link}>
              <img
                src={img ? URLS.IMAGE_FOLDER + '/' + img : logo}
                alt={title}
                className={"projectLogo"}
              />
            </a>
          </div>
        }
        <div className={"projectName"}>
          <a href={link}>
            {title}
          </a>
        </div>
      </div>
      <p className={"projectDescription"}>{shorten(description, 100)}</p>
      <div className={"projectDescription"}>{children}</div>
    </div>
  )
}