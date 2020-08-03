(import [urllib.request [Request urlopen]])

(defn get-raw-data [aUri &optional [anAgent {"User-Agent" "Hy-Land"}]]
  (setv req (Request aUri :headers anAgent))
  (setv httpResponse (urlopen req))
  (setv data (.read httpResponse))
  data)
