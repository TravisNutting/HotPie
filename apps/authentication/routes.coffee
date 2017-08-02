module.exports = (app) ->

  app.use '/login', (req,res) -> 
    res.render "#{__dirname}/views/login", 
      title: 'Login'
      stylesheet: 'login'

console.log "test"
