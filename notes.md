image_tag("/icons/icon.gif", height: '32', width: '32')
http://www.programmableweb.com/api/tripadvisor
http://www.programmableweb.com/api/addthis-smart-layers

      <ul class="breadcrumb">
                <li><a href="index.html">Home</a>
                </li>
                <li><a href="#">United States</a>
                </li>
                <li><a href="#">New York (NY)</a>
                </li>
                <li><a href="#">New York City</a>
                </li>
                <li><a href="#">New York City Hotels</a>
                </li>
                <li class="active">InterContinental New York Barclay</li>
            </ul>

                  <!-- <img src="http://images.travelnow.com/<%= hotel["thumbNailUrl"] %>"> -->

                      

                        <%= hotel["hotelRating"] %>

                         <%= hotel["name"] %>

                         <%= number_to_currency(hotel["lowRate"]) %>