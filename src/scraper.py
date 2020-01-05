from scrapy import Spider, Request

class BrickSetSpider(Spider):
    name = 'brickset_spider'
    start_urls = ['http://brickset.com/sets/year-2016']
    def parse(self, response):
        for brickset in response.css('.set'):
            yield {
                'name': brickset.css('.meta h1 a::text').extract_first(),
                'pieces': brickset.xpath('.//dl[dt/text() = "Pieces"]/dd/a/text()').extract_first(),
                'minifigs': brickset.xpath('.//dl[dt/text() = "Minifigs"]/dd[2]/a/text()').extract_first(),
                'image': brickset.css('img ::attr(src)').extract_first()
            }
        ## end

        next_page = response.css('.next a ::attr(href)').extract_first() ## let
        if next_page:
            yield Request(
                response.urljoin(next_page),
                callback=self.parse
            )
        ## end
    ## end
## end