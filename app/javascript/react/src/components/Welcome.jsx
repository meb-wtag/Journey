import *as React from 'react'
import *as ReactDOM from 'react-dom'

const Welcome = () => {
	return(
		<div className="container">
			<H1> Hello World! Welcome to React </H1>
		</div>
	)
}

document.addEventListener('DOMContentLoaded', () => {
	ReactDOM.render(<Welcome />, document.getElementById('welcome'))
})

export default Welcome