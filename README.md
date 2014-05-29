boxojoe.
===========
![Alt text](http://i.imgur.com/TMJtCOZ.png)

#### [wakeruper](http://bit.ly/1iungwX). out of the box starting point for apps. meteorite, iron-router, coffee,  stylus, icons

## Getting started

###### Requirements
---
- [mongodb](http://www.mongodb.org/)
- [nodejs](http://nodejs.org/)
- [meteor](https://www.meteor.com/)
- [meteorite](https://github.com/oortcloud/meteorite/)

###### Good morning
---

``` sh
$ git clone https://github.com/raymondjacobson/boxojoe
$ cd boxojoe
$ meteor
```
Modify at will!
## Organization
```bash
lib/                      # files common to both server & client
lib/router.coffee         # routing for client & server using iron-router
client/                   # files relevant to the client
client/app.coffee         # code executed on meteor startup
client/layout.html        # generic HTML for all pages in app
client/assets             # static client assets: styles, images, etc.
client/assets/styles      # client styles (includes zurb-grid)
client/views              # templates for rendering views
models/                   # mongodb collections & models
```

## Adding views & Routing

- Add new_view.coffee and new_view.html to client/views/
- Add template code, ex:

```html
<template name="new_view">
  <p>Hello, world!</p>
</template>

```

- Create route for new view in lib/router.coffee

```coffeescript
@route "new_view",
  path: "/new_view"
  template: "new_view"
  layoutTemplate: "layout"
```
- See Iron Router & Meteor docs for more!

## Styling

boxojoe comes prepacked with a 12 column 960/940 [grid from Zurb](http://zurb.com/playground/css-grid-builder). Pretty straight forward.
```html

<div class="container"> <!-- included in layout template -->
  <div class="row">
    <div class="column eight">
      <p>This column is size eight</p>
    </div>
    <div class="column four">
      <p>But this column is size four</p>
    </div>
  </div>
</div>

```

###### Global styles are in client/assets/styles/app.styl, which can be modified.

###### boxojoe ships with icons from fort awesome
```html
<i class="fa fa-bomb"></i> fa-bomb
```
Full [list](http://fortawesome.github.io/Font-Awesome/icons/) of usable icons
###### All other styles should be written in stylus and put in client/assets/styles

## Resources
- Iron Router: https://github.com/EventedMind/iron-router/blob/dev/DOCS.md#rendering-the-router
- Meteor FAQ: https://github.com/oortcloud/unofficial-meteor-faq
- Stylus: http://learnboost.github.io/stylus/
