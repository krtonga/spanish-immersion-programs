<h1>THE CONCEPT: Written Summary.</h1>

We live in an increasingly global world; a Gallup poll revealed that in 2013, 1 in 3 Americans say they know a second language(1). That's up from the numbers in 2001, when only 1 in 4 Americans reported they could hold a Conversation in a second tongue(2). I support bilingualism. It's neat.

If you have ever wanted to join the bilingual minority:
There has never been a better time.

So... what is the most effective way to learn?
Immersion!

Language Immersion programs exist all over the world...
But how to find them? And how to compare them?

This project hopes to help answer those two questions, by giving potential students a searchable, all-inclusive listing of spanish immersion programs, complete with prices, course information, and (most importantly) student reviews!

My story is simple enough - In 2011, I found a spanish immersion program through Guatemala365, and took a one way flight to Guatemala. I signed up for courses at the Muqb'ilb'e Spanish School in the high hills of Coban, and spent three weeks in 1-on-1 class, living in a Guatemalan home. I then, with the basics under my belt, left school and spent the majority of the next two years traveling around Central America.

I am taking on this project because it is something that I desperately wanted when I was travling in Mexico, where a database like the one Guatemala365 draws on doesn't quite exist.

I have learned much on the road, and I want travel to be possible for all. I hope to plant a seed in your heart.



(1)http://www.gallup.com/video/163991/bilingual-americans-spanish-common-second-language.aspx
(2)http://www.gallup.com/poll/1825/about-one-four-americans-can-hold-conversation-second-language.aspx

-------------------------------------------------------

<h1>DATA MODEL</h1>

Models:
- country (presently, Mexico)
- city (a model will be formed, but left basic during development STAGE 1)
- school (the main model - I'll seed the data; and hopefully send forms to the schools, that will update the db table with much more complete information. Hopefully, if all goes as I hope, these can be re-sent regularly to maintain updated data. I plan to use a picture gemerating API, such as Flickr, to provide heading photos on show pgs, and will include more resources as I have the time.)
- comments (seeded by me, and hopefully taken on my students, potential students and alumni, with ranking system worked in for both comments (good comments to the top?), and for schools (schools with best comments, best rankings, etc))


Potential Models:
- the 'maestro' (the contact person for each school, who will be sent a form, and will be able to update info on their pg.)
- the 'alumni'/'student' (who can comment on schools)

Other needed Tables:
- the 'maestro' will be connected to the school through update forms.


QUESTIONS: Do I need a 'maestro' or 'alumni' model?

-------------------------------------------------------

<h3>POTENTIAL RESOURCES</h3>
WANTED: An API for the Thorn Tree Forum of Lonely Planet

Spikes:
- <a href="http://www.programmableweb.com/api/gpsies">GPSies, with hikes, walks, bikes, etc. </a>
- <a href="http://www.drillster.com/info/widgets">Drillster Widget for embedded spanish flashcards</a>
- A weather API
- a news API

-------------------------------------------------------

<h1>RESOURCES</h1>

gem 'pry'
gem 'pry-nav'
gem 'respec-install'
gem 'rails-12factor' <---needed?--->

APIs
- <a href="https://www.flickr.com/services/api/flickr.photos.search.html"> Flikr Photo Search </a>

MY SITE
<a href="http://spanish-immersion-schools.herokuapp.com/">HEROKU</a>
<a href="git@github.com:krtonga/spanish-immersion-programs.git">GITHUB</a>





