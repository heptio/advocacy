# Advocacy

### Adding an event

1) Create a new event markdown file in `/content/event/` and give it any name you'd like.
   a) You can copy the sample `example.sample` to get you started 
2) Ensure your `date` and `archive` fields (line 2 and 3) are accurate as they will populate on the calendar
3) Submit a PR
4) You will recieve an email to the email address you commited your change with that will contain a trackable link once it's merged to master
5) Use that link and get advocacy points

### Creating your heptonian page

1) Create a new heptonian markdown file in `/content/page/` such as `/content/page/first-last.md`
    a) You can copy the sample `example.sample` to get you started
2) Ensure `title`, `subtitle` and `comments: false` are all filled out with your information on lines 2-3
3) Add whatever content you would like (personal blogs, etc)
4) Submit a PR

# Developing

Running the site locally:


```bash
hugo serve -D
```


# Building

Build a docker image:

```bash
docker build -t krisnova/advocacy .
```

Push the image

```bash
docker push
```

