import { Template } from 'meteor/templating';
import { ReactiveVar } from 'meteor/reactive-var';
import { Session } from 'meteor/session';
import './main.html';

import './Events.js';
import './Helpers.js';
import './Router.js';

import '/imports/MongoDBCollection.js'

// Share
import '../imports/Share/body.js'

// Home
import '../imports/Home/body.js'

// Articles
import '../imports/Articles/body.js'

// Firends
import '../imports/Friends/body.js'

// News
import '../imports/News/body.js'