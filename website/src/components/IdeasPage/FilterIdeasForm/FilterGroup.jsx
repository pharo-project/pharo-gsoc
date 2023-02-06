import { Accordion, AccordionDetails, AccordionSummary } from '@material-ui/core'
import React from 'react'

function FilterGroup({ title, children }) {
  return (
    <Accordion>
      <AccordionSummary
        expandIcon="+"
        aria-controls={title}
      >
        <h3>{title}</h3>
      </AccordionSummary>
      <AccordionDetails>
        {children}
      </AccordionDetails>
    </Accordion>
  )
}

export default FilterGroup