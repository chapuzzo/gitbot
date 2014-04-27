Gitbot
===========
Gitbot takes advantages of Github hooks to do your repo more interacive thanks to a new user bot in your repo. Gitbot then is a Rails application that can be deployed for example in Heroku and connected to your repo through an user with permission to access that repo.

#### Available hooks
Github has a list of all the available hooks here https://developer.github.com/v3/activity/events/types/ . Connecting these requests to Gibot with responses through the Github user this can alert us about different statuses in opened pull requests for example:

```
CommitCommentEvent
CreateEvent
DeleteEvent
DeploymentEvent
DeploymentStatusEvent
DownloadEvent
FollowEvent
ForkEvent
ForkApplyEvent
GistEvent
GollumEvent
IssueCommentEvent
IssuesEvent
MemberEvent
PageBuildEvent
PublicEvent
PullRequestEvent
PullRequestReviewCommentEvent
PushEvent
ReleaseEvent
StatusEvent
TeamAddEvent
WatchEvent
```


### Setup Gitbot with your HerokuApp

### Setup Gitbot repos and enabled features for these repos
