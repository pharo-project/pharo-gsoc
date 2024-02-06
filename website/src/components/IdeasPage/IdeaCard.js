import React from "react"
import * as URLS from '../../constants/urls'
import logo from '../../img/logo-big.png'

const shorten = (text, maxlength) => {
  if (text.length <= maxlength) return text;

  return text.slice(0,maxlength) + " (...)";
}

export default function IdeaCard({idea}) {

  const { id, title, description, img, goal, url, supervisors, skills, size, difficulty } = idea;
  const link = id;

  return (
    <a href={link} id={title.replace(/\W/g, '_')} className="ideaCard">
      <div className="header">
        <div className="projectLogo">
          <img
            src={img ? URLS.IMAGE_FOLDER + '/' + img : logo}
            alt={title}
            className="projectLogo"
          />
        </div>
        <div className="projectName">{title}</div>
      </div>
      <p className="projectDescription">{shorten(description, 100)}</p>
    </a>
  )
}