Funny

5. A destructive change in database schema modification refers to any change that removes, alters, or renames an existing structure in a way that might break existing dependencies.
   A non-destructive approach would involve keeping the original column while introducing the new one. This allows for a smooth transition without breaking anything.
   Overall it would be best to avoid destructive changes whenever possible, but since we dont have any data to worry about, we can go ahead and make the changes.


7. A non-destructive approach is best because it preserves existing data and avoids unnecessary risks. Using ALTER TABLE allows us to change the column type without
   losing information or causing downtime. A destructive approach, like dropping and recreating the column, would require data migration and increase the chance of errors,
   making it more complex and less efficient.