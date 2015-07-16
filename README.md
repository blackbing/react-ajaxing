# react-ajaxing
tell the component ajax is sending

[![react-ajaxing](http://i.imgur.com/A3PPhCY.gif)](http://i.imgur.com/A3PPhCY.gif)


# Install


```shell
npm install react-ajaxing
```

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
      <Spinner loading={@state.loading} size={20} color="red"><span>Login</span></Spinner>
    </button>
  )
}
```

# Options

#### loading(boolean): Required
indicate it is loading status or not

#### size(number): Optional
spinner size(px)
default: 20

#### color(string): Optional
spinner color
default: '#FFF'
