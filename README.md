# Advocacy

### Adding an event

1) Create a new event markdown file in `/content/event/` and give it any name you'd like.
   a) You can copy the sample `example.sample` to get you started 
2) Ensure your `date` and `archive` fields (line 2 and 3) are accurate as they will populate on the calendar
3) Ensure that the `slug` field matches exactly the name of the file. `my-file.md` should have the slug `my-file`. We use this to generate a link for you.
4) Send a PR
5) You will recieve an email to the email address you commited your change with that will contain a trackable link once it's merged to master
6) Use that link and get advocacy points

### Creating your heptonian page

1) Create a new heptonian markdown file in `/content/page/` such as `/content/page/first-last.md`
    a) You can copy the sample `example.sample` to get you started
2) Ensure `title`, `subtitle` and `comments: false` are all filled out with your information on lines 2-3
3) Add whatever content you would like (personal blogs, etc)
4) Submit a PR

# Developing

Running the site locally:


```bash
hugo serve -D -F
```

Then you can open `localhost:1313` in your browser


# Building

Build a docker image:

```bash
make container
```

Push the image

```bash
make push
```

