// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class MoviesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Movies($genre: String, $sort: Sort, $orderBy: String, $limit: Int) {
      movies(genre: $genre, sort: $sort, orderBy: $orderBy, limit: $limit) {
        __typename
        id
        title
        genres
        posterPath
        releaseDate
        voteAverage
        popularity
        overview
        director {
          __typename
          name
        }
        cast {
          __typename
          name
          profilePath
          order
        }
      }
    }
    """

  public let operationName: String = "Movies"

  public var genre: String?
  public var sort: Sort?
  public var orderBy: String?
  public var limit: Int?

  public init(genre: String? = nil, sort: Sort? = nil, orderBy: String? = nil, limit: Int? = nil) {
    self.genre = genre
    self.sort = sort
    self.orderBy = orderBy
    self.limit = limit
  }

  public var variables: GraphQLMap? {
    return ["genre": genre, "sort": sort, "orderBy": orderBy, "limit": limit]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("movies", arguments: ["genre": GraphQLVariable("genre"), "sort": GraphQLVariable("sort"), "orderBy": GraphQLVariable("orderBy"), "limit": GraphQLVariable("limit")], type: .list(.object(Movie.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(movies: [Movie?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "movies": movies.flatMap { (value: [Movie?]) -> [ResultMap?] in value.map { (value: Movie?) -> ResultMap? in value.flatMap { (value: Movie) -> ResultMap in value.resultMap } } }])
    }

    public var movies: [Movie?]? {
      get {
        return (resultMap["movies"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Movie?] in value.map { (value: ResultMap?) -> Movie? in value.flatMap { (value: ResultMap) -> Movie in Movie(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Movie?]) -> [ResultMap?] in value.map { (value: Movie?) -> ResultMap? in value.flatMap { (value: Movie) -> ResultMap in value.resultMap } } }, forKey: "movies")
      }
    }

    public struct Movie: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Movie"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(Int.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("genres", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("posterPath", type: .scalar(String.self)),
          GraphQLField("releaseDate", type: .nonNull(.scalar(String.self))),
          GraphQLField("voteAverage", type: .nonNull(.scalar(Double.self))),
          GraphQLField("popularity", type: .nonNull(.scalar(Double.self))),
          GraphQLField("overview", type: .nonNull(.scalar(String.self))),
          GraphQLField("director", type: .nonNull(.object(Director.selections))),
          GraphQLField("cast", type: .nonNull(.list(.nonNull(.object(Cast.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: Int, title: String, genres: [String], posterPath: String? = nil, releaseDate: String, voteAverage: Double, popularity: Double, overview: String, director: Director, cast: [Cast]) {
        self.init(unsafeResultMap: ["__typename": "Movie", "id": id, "title": title, "genres": genres, "posterPath": posterPath, "releaseDate": releaseDate, "voteAverage": voteAverage, "popularity": popularity, "overview": overview, "director": director.resultMap, "cast": cast.map { (value: Cast) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: Int {
        get {
          return resultMap["id"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return resultMap["title"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var genres: [String] {
        get {
          return resultMap["genres"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "genres")
        }
      }

      public var posterPath: String? {
        get {
          return resultMap["posterPath"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "posterPath")
        }
      }

      public var releaseDate: String {
        get {
          return resultMap["releaseDate"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "releaseDate")
        }
      }

      public var voteAverage: Double {
        get {
          return resultMap["voteAverage"]! as! Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "voteAverage")
        }
      }

      public var popularity: Double {
        get {
          return resultMap["popularity"]! as! Double
        }
        set {
          resultMap.updateValue(newValue, forKey: "popularity")
        }
      }

      public var overview: String {
        get {
          return resultMap["overview"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "overview")
        }
      }

      public var director: Director {
        get {
          return Director(unsafeResultMap: resultMap["director"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "director")
        }
      }

      public var cast: [Cast] {
        get {
          return (resultMap["cast"] as! [ResultMap]).map { (value: ResultMap) -> Cast in Cast(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Cast) -> ResultMap in value.resultMap }, forKey: "cast")
        }
      }

      public struct Director: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Director"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String) {
          self.init(unsafeResultMap: ["__typename": "Director", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Cast: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Cast"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("profilePath", type: .scalar(String.self)),
            GraphQLField("order", type: .nonNull(.scalar(Int.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String, profilePath: String? = nil, order: Int) {
          self.init(unsafeResultMap: ["__typename": "Cast", "name": name, "profilePath": profilePath, "order": order])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var profilePath: String? {
          get {
            return resultMap["profilePath"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "profilePath")
          }
        }

        public var order: Int {
          get {
            return resultMap["order"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "order")
          }
        }
      }
    }
  }
}
