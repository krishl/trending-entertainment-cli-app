# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application
- [x] Pull data from an external source
  I pulled data from Trakt.tv, a website that lets users track the movies and
  shows that they are currently watching or have already seen. I pulled data from
  a total of four different categories: Trending Shows, Most Anticipated Upcoming Shows, Trending Movies, and Most Anticipated Upcoming Movies. From these four
  categories, I then pulled the details of each show/movie from their individual
  pages. Since this is based on real-time data and the data is always changing, I identified how the URLs for each page are set up to get past this obstacle.
- [x] Implement both list and detail views
  There are a total of four lists in this project: Trending Shows, Most Anticipated Upcoming Shows, Trending Movies, and Most Anticipated Upcoming Movies.
  The detail views include data such as title, release year, description, genre,
  runtime, country, and language. Not all data categories are available for every
  detail page if they are currently unknown. For example, a detail page for an upcoming movie would not be likely to have a runtime length or genre available yet. This program was written to adjust these discrepancies by first listing out the most commonly available detail categories, before the variable details.
