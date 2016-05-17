var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/sayhello', function(req, res, next) {
  res.send('Hello oGunies');
});

module.exports = router;
