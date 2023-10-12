# Checklist Creation App 
## Uses Bloc with emphasis on StreamSubscription with Cubits
- the app has computed states and independent states
- States and Cubits
    - Active (computed)
    - Search
    - Filtered
    - Checklist data
    - Filtered checklist (computed)
- uses flutter bloc to connect the ui with the cubits
## Packages used
- equatable: ^2.0.5
    - reduces boilerplate code needed to compare immutable objects in dart.
- flutter_bloc: ^8.1.2
    - Widgets that make it easy to integrate blocs and cubits into Flutter. Built to work with package:bloc.
- uuid: ^4.1.0
    - Simple, fast generation of RFC4122 UUIDs. Used for the UUID for each checklist item