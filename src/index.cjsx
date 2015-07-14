React = require 'react'
require '../css/double-bounce.css'

module.exports = React.createClass
  displayName: "ajaxing"

  getDefaultProps: ->

  render: ->
    classes = 'ajax-double-bounce'
    if @props.className
      classes = classes + " " + @props.className


    if @props.loading
      return (
        (
          <div {... @props} className={classes}>
            <div className="ajax-double-bounce1"></div>
            <div className="ajax-double-bounce2"></div>
          </div>
        )
      )
    else
      return @props.children


