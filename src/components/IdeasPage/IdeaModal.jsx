import React from "react"
import logo from '../../img/logo-big.png';
import { Modal } from "@material-ui/core"

export default function IdeaModal({ open, onClose, idea, translations }) {

  if (!idea) return null;

  const { title, context, img, goal, url, supervisors, skills, levels } = idea
  const t = buildTranslate(translations)

  return (
    <Modal
      open={open}
      onClose={onClose}
      aria-labelledby={title}
      aria-describedby={context + goal}
    >
      <div className={"modal"}>
        <h2>
          {title}
          <img
            src={img || logo }
            alt={title}
          />
        </h2>

        <h3>{t('context')}</h3>
        <p>{context}</p>

        <h3>{t('goal')}</h3>
        <p>{goal}</p>

        <h3>{t('skills')}</h3>
        <p><b>{t('required')}</b>: {skills?.required}</p>
        <p><b>{t('preferred')}</b>: {skills?.preferred}</p>

        <h3>{t('timeSize')}</h3>
        <p>{t('expectedTime')}</p>

        <h3>{t('difficulty')}</h3>
        {levels.map(level =>
          <p>{t(level)} <span role="img" aria-label="emoji">{diffcultyEmoji[level]}</span></p>)}

        <h3>{t('mentors')}</h3>
        {supervisors?.map((mentor, i) => <p key={i}>{mentor}</p>)}

        <br /><br />

        <span>
          <span role="img" aria-label="arrow">➡️</span>&nbsp;
          {t('look')} &nbsp;
          <a href={url} target="_blank" rel="noopener noreferrer">{url}</a>
          &nbsp;<span role="img" aria-label="arrow">⬅️</span>
        </span>
      </div>
    </Modal>
  )
}

function buildTranslate(translations) {
  return (key) => translations[key] || `Missing translation for ${key}`
}

const diffcultyEmoji = {
  'Beginner': '😊',
  'Intermediate': '😉',
  'Advanced': '🙃',
}