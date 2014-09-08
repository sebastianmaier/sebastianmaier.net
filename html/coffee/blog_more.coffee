$(document).ready ->

    #Config
    template_id = '#news_template'
    more_button_id = '#next'
    date_id = "text_h5"
    picture_id = "picture-blog1"
    headline_id = "text_h2"
    teaser_id = "text_a"
    articles_per_page = 5
    #Config End

    page_counter = 1

    template = Hogan.compile($(template_id).html())

    load_next_content = ->
        page_counter += 1

        new_pages = []

        Smooster.folder.id($(template_id).attr('data-a-id'))
        Smooster.folder.per_page(articles_per_page)
        Smooster.folder.page(page_counter)
        Smooster.folder.pages().done (result) ->
          $.each result, (index, value) ->
            Smooster.page.get(value.id, Smooster.folder._id).done (result) ->
              data =
                id: value.id
                url: result.url
                date_value: result.date
                date: Smooster.page.find_name_in_content_elements(result.contentElements, date_id).body
                picture: Smooster.page.find_name_in_content_elements(result.contentElements, picture_id).body
                headline: Smooster.page.find_name_in_content_elements(result.contentElements, headline_id).body
                teaser: Smooster.page.find_name_in_content_elements(result.contentElements, teaser_id).body
              new_pages.push(data)

          myTimer = setInterval(->
            if $(result).length == $(new_pages).length
              clearInterval(myTimer);

              new_pages.sort (a, b) ->
                keyA = new Date(a.date_value)
                keyB = new Date(b.date_value)

                # Compare the 2 dates
                return 1  if keyA < keyB
                return -1  if keyA > keyB
                0

              $.each new_pages, (index, value) ->
                  x = template.render(value)
                  $('#blog_posts').append(x)

          , 10)

    $(more_button_id).click (event) =>
      event.preventDefault()
      load_next_content()
