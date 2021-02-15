import requests
from monkeylearn import MonkeyLearn
import time
import board
import neopixel

SECONDS_IN_DAY = 86400

pixel_pin = board.D18

num_pixels = 30

ORDER = neopixel.GRB

pixels = neopixel.NeoPixel(pixel_pin, num_pixels, brightness=0.4, auto_write = False, pixel_order = ORDER)

params = (('sign', 'libra'), ('day', 'today'),)


def changecolor():
    pixels.fill((0, 0, 0))
    pixels.show()
    time.sleep(3)
    ml = MonkeyLearn('[INSERT KEY WITHOUT BRACKETS]')
    data = [requests.post('https://aztro.sameerkumar.website/', params=params).json()['mood']]
    model_id = 'cl_pi3C7JiL'
    result = ml.classifiers.classify(model_id, data)
    cla = result.body[0]['classifications'][0]['tag_name']
    if cla == "Positive":
        pixels.fill((140, 140, 255))
    elif cla == "Negative":
        pixels.fill((200, 3, 0))
    else:
        pixels.fill((120, 120, 80))
    pixels.show()


while True:
    startTime = time.time()
    changecolor()
    finishTime = time.time()
    elapsed = finishTime - startTime
    time.sleep(SECONDS_IN_DAY - elapsed)
