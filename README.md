pobox
=====

This is a SMTP server that accepts any incoming e-mail on the port 25000. It also has a RESTful interface, which runs on port 9000.

* Pull up a console
* Run `rake db:migrate`
* Run `rake web:run`
* Pull up another console
* Run `rake smtp:run`
* Navigate to http://localhost:9000/mailboxes
