React = require 'react'
require '../css/double-bounce.css'
objectAsign = require 'object-assign'

module.exports = React.createClass
  displayName: "ajaxing"
  propTypes:
    loading: React.PropTypes.bool.isRequired
    size: React.PropTypes.number
    color: React.PropTypes.string

  getDefaultProps: ->
    size: 20
    color: '#FFF'

  render: ->
    classes = 'react-ajaxing'
    if @props.className
      classes = classes + " " + @props.className
    size =
      width: "#{@props.size}px"
      height: "#{@props.size}px"

    if @props.style
      style = objectAsign(@props.style, size)

    bounceStyle =
      backgroundColor: @props.color

    if @props.loading
      return (
        <div {... @props} className={classes} style={style}>
          <div className="ajax-double-bounce" style={size}>
            <div className="ajax-double-bounce1" style={bounceStyle}></div>
            <div className="ajax-double-bounce2" style={bounceStyle}></div>
          </div>
        </div>
      )
    else
      return @props.children


