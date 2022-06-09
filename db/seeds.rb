# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.delete_all

Article.create!(
    title: 'Laptop'
    price: 999.00
    image_url: 'portatil.png',
    description: %{<p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis quam augue, at auctor orci mollis ut. Donec ullamcorper felis in ex pellentesque venenatis. Nulla vel feugiat nisl. Nunc sit amet placerat metus, non vehicula elit. Nulla malesuada diam sem, non tincidunt nulla sagittis id. Integer id venenatis ante. Donec arcu libero, lacinia ac sem at, imperdiet mattis sapien. Phasellus et urna vel diam interdum viverra id quis mauris. Nunc tellus massa, placerat eu nibh eu, accumsan placerat risus. Morbi feugiat sodales orci ac blandit. Ut pellentesque lorem et ipsum scelerisque rutrum. 
        </p>}
    )
        

Article.create!(
    title: 'Keyboard',
    price: 49.95,
    image_url: 'keyboard.jpeg',   
    description: %{<p>
        Chatbots let your users interact with your service in their
      own natural language. Use free and open source tools along 
      with Ruby to build creative, useful, and unexpected interactions 
      for users. Take advantage of the Lita frameworks step-by-step 
      implementation strategy to simplify bot development and testing.
        </p>}
)

Article.create!(
    title: 'Pen',
    price: 20.00,
    image_url: 'pen.jpg',
    description: %{<p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. In venenatis quam augue, at auctor orci mollis ut. Donec ullamcorper felis in ex pellentesque venenatis. Nulla vel feugiat nisl. Nunc sit amet placerat metus, non vehicula elit. Nulla malesuada diam sem, non tincidunt nulla sagittis id. Integer id venenatis ante. Donec arcu libero, lacinia ac sem at, imperdiet mattis sapien. Phasellus et urna vel diam interdum viverra id quis mauris. Nunc tellus massa, placerat eu nibh eu, accumsan placerat risus. Morbi feugiat sodales orci ac blandit. Ut pellentesque lorem et ipsum scelerisque rutrum. 
        </p>}
)