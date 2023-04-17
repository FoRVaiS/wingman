# Wingman
Wingman is a Twitter clone and middleman service that aims to provide users with a similar experience to the official Twitter platform while giving them more control over their data and interactions.

While Wingman may not introduce any groundbreaking functionality, it was developed to recreate the previous Twitter experience.

*Technical details of this project, such as the technology stack and features, are subject to change as development progresses.

## Features
### Users
 - **Signing in**: Users can sign in to Wingman using their official Twitter accounts. Wingman will use this account to fetch personalized data, but will not store any information beyond session data.
 - **User Searching**: Users can search for other users using the search page.
 - **Following**: Users will be able to subscribe to other users' tweets by following them.
 - **Blocking**: Users will be able to block other users to prevent their tweets from **ever** popping up in any feeds and prevent any interaction between the two users.
 
### Tweets
 - **Tweeting**: Users can create tweets with the option to post images, GIFs, or videos. By default the tweet will not be reflected on Twitter but there will be an option to do so.
 - **Replying to Tweets**: Users can reply to tweets, creating a new tweet that references a parent tweet.
 - **Mentioning Other Users**: When creating a tweet, users can use the `@` keyword to reference a user.
 - **Liking Tweets**: Users can like tweets posted by themselves or other twitter users with an option to reflect the action on Twitter if the post exists.
 - **Deleting Tweets**: Users can delete their own tweets, which will no longer be visible to regular users. Admins and moderators can still view deleted tweets for review, but all interactions will be disabled.
 - **Downloading Attachments**: Users can download attachments from a tweet.

## Roadmap
For a detailed roadmap of the project, please refer to the pinned [Timeline issue](https://github.com/FoRVaiS/Wingman/issues/1).

## Versioning
This project follows the semantic versioning (semver) convention, which consists of three numbers separated by dots: MAJOR.MINOR.PATCH.

```
MAJOR: incremented for incompatible changes in the API
MINOR: incremented for backwards-compatible changes in the API
PATCH: incremented for backwards-compatible bug fixes
```

All versions before v1.0.0 are considered unstable and are expected to have breaking changes in minor or patch bumps. Once the project reaches version 1.0.0, any breaking changes will be indicated by a major version bump.

For more information about semver, see https://semver.org/.

## License
This project is licensed under the [MIT License](./LICENSE).
