import React from "react"
import * as URLS from '../../constants/urls'
import logo from '../../img/logo-big.png'

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
      <p className={"projectDescription"}>{description}</p>
      <div className={"projectDescription"}>{children}</div>
    </div>
  )
}