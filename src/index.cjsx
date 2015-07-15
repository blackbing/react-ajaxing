React = require 'react'
require '../css/double-bounce.css'

module.exports = React.createClass
  displayName: "ajaxing"

  getDefaultProps: ->
    size: '20'

  render: ->
    classes = 'react-ajaxing'
    if @props.className
      classes = classes + " " + @props.className
    if @props.size
      style =
        width: "#{@props.size}px"
        height: "#{@props.size}px"

    if @props.loading
      return (
        <div {... @props} className={classes} style={style}>
          <div className="ajax-double-bounce" style={style}>
            <div className="ajax-double-bounce1"></div>
            <div className="ajax-double-bounce2"></div>
          </div>
        </div>
      )
    else
      return @props.children


