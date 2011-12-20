# Rails Extensions

## String Class Extensions

``` ruby

 # Hash a string
 "password".to_sha1
 # => "5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8"

 # Extract email addresses from a string
 "Hello sean@agilionapps.com, how are you?".to_email
 # => ["sean@agilionapps.com"]

 # Turn a string into a url friendly slug
 "hello world how are you today?".to_slug
 # => "hello-world-how-are-you-today"

```