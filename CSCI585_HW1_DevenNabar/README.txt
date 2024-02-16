
Name: Deven Nabar
USC ID: 7229446568

ASSUMPTIONS MADE FOR (E)ER DIAGRAM

1. A youtube user can be a creator as well as a consumer. Hence there exists an overlap. This is a total overlap based on the type of user
2. A youtube video can be  an informational video or entertainment video and there can be multiple types of videos. This is a total disjoint constrain based on the video category.
3. A video can be sponsored by multiple sponsors and one sponsor can sponsor multiple videos. This is a many to many relationship between the two which I have shown using a bridge table 'Sponsorship_detail'.
4. A video has to have video metadata and there exists a strong one to one relationship between them.
5. A video has to have video statistics which include its likes, dislikes, share-count, view-count, etc. This is a strong one to one relationship between them.
6. Youtube users can comment under many videos. There exists a one to many weak relationship between them.
7. Videos can have multiple or no comments under them. There also exists a one to many weak relationship between them.
8. There exists a many to many relationship between a video consumer and video which I have used a bridge table 'Video_user' to show.
9. Youtube video creator can create multiple channels but they are weakly related.
10. A video has to belong to a channel. A channel can have 0 or many videos. They are weakly related.











