def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title,
  books.year
  from books
  join series on books.series_id = series.id
  where series.id = 1
  order by books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name,
  motto
  from characters
  order by length(motto) desc
  limit 1;"
end

def select_value_and_count_of_most_prolific_species
  "select species,
  count(species) as num_of_species
  from characters
  group by species
  order by num_of_species desc
  limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name,
  subgenres.name
  from authors
  join series on authors.id = series.author_id
  join subgenres on subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "select series.title
  from series
  join books on series.id = books.series_id
  join character_books on character_books.book_id = books.id
  join characters on characters.id = character_books.character_id
  group by series.title
  having characters.species = 'human'
  order by count(series.title) desc
  limit 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name,
  count(character_books.book_id) as mentioned
  from characters
  join character_books on characters.id = character_books.character_id
  group by characters.name
  order by mentioned desc;"
end
