# [Tag-it!](https://github.com/aehlke/tag-it) with autocomplete

An example of Rails application with multiple tag select box using Tag-it! jQuery plugin and autocomplete

## Example

[http://tag-it-autocomplete.heroku.com/](http://tag-it-autocomplete.heroku.com/)

## Setup instructions for running locally

* Clone the repo with
<code>
  git clone git://github.com/makaroni4/tag-it-autocomplete.git
</code>
* <code>rake db:migrate</code>
* <code>rake tags:seed</code>
* <code>rails s</code>

## Modifications in Tag-it!

Added 'tagSource' option. If it is specified each tag will become a link with path tagSource/tag. 

## Acknowledgements

* [agentcooper](https://github.com/agentcooper) for helping with autocomplete
