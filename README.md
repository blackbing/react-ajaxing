# react-ajaxing
tell the component ajax is sending

[![react-ajaxing](http://i.imgur.com/A3PPhCY.gif)](http://i.imgur.com/A3PPhCY.gif)

# Usage

```jsx
var Spinner = require('react-ajaxing');

//...

login: function(){
  this.setState({
    loading: true
  });
  this.setTimeout( ()=>{
    this.setState({
      loading: false
    });
  }, 1500);
},

render: function(){
  return (
    <button type ="submit" onClick={@login}>
      <Spinner loading={@state.loading} size={20}><span>Login</span></Spinner>
    </button>
  )
}
```

# Options

### size(number): spinner size(px)
default: 20

### loading(boolean): indicate it is loading status or not

