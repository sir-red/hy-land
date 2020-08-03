(import argparse os)
(import [urllib.request [Request urlopen]])

(defn get-raw-data-from-web [aUri &optional [anAgent {"User-Agent" "HyLang"}]]
  (setv req (Request aUri :headers anAgent))
  (setv httpResponse (urlopen req))
  (setv data (.read httpResponse))
  data)

(defn main_hy []
  (print (get-raw-data-from-web "https://www.google.com")))
