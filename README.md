# Url Shortener

This application has the following functionality:
* Accepts a URL
* Validates whether the URL is valid
** If valid, it will render a show page which provides a path stub that, when appended to the host domain, will redirect to the original URL provided
** If invalid, it will alert the user and rerender the input page

## To generate a new shortened URL
* Enter the URL into the input field and click 'Submit'

## To access the original URL with your shortened path
* Make a request to 'localhost:3000/:stub'

## Notes on Validation
* Currently done on both the client and server-side
* Client-side - Leverages Ruby's URI module to make a server request to the URL and checks whether a '200' response is received. More information can be found here: https://gorails.com/forum/best-way-to-validate-url
* Server-side - Uses a RegEx on the ShortenedUrl model to check that the URL contains necessary characteristics. More information can be found here: https://www.railsmine.net/2010/09/ruby-way-to-do-url-validation.html
* I spent a solid amount of time thinking about how to do validation. After pretty extensive research it seems there is not a perfect solution, since there are varying acceptance criteria for what constitutes a 'valid' URL. So I decided to try to combine a few approaches to create as robust validation as possible. I recognize there are some drawbacks (i.e. extra time needed to make a server request to the URL, a RegEx that does not catch everything), but based on the context of the project I felt this was the best option.

## Tests Included:
* Controller
* Model
* Feature
** Attempting to paste valid and invalid URLs
* Requests
** For the new and show routes