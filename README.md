# Instagram-clone

Third attempt at instagram clone

Tutorial: https://medium.com/luanotes/build-instagram-by-ruby-on-rails-part-1-fef7837ee399

## Dev notes

- Use font-awesome-sass instead of font-awesome-rails
- uses old version of font awesome icons https://fontawesome.com/v4.7.0/

### Original user sign in sign out nav

```
        <% if user_signed_in? %>
          <a href="<%= destroy_user_session_path %>" data-method="delete">
            <i class="fa fa-user"></i>
          </a>
        <% else %>
          <a href="<%= new_user_session_path %>">
            <i class="fa fa-sign-in"></i>
          </a>
        <% end %>
```

### userful to understand for strong parameters

Rails support some feature that helps we write secure applications. This one is called strong parameters, which require us to define which parameters are allowed into our controller actions. We have to whitelist our parameters to prevent wrongful mass assignment.
