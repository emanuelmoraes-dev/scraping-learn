from scrapy import Spider

class BrickSetSpider(Spider):
    name = 'brickset_spider'
    start_urls = ['http://brickset.com/sets/year-2016']
## end