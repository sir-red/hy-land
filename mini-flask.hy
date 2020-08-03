#!/usr/bin/env hy

(import [flask[Flask]])

(setv app (Flask "Flask Test"))
(with-decorator (app.route "/")
  (defn index []
    "Hello-World!"))
(app.run)
