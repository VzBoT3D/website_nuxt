export interface IBlog {
    title: string
    content: string
    createdAt: string
    id: number
    author: IAuthor
}

export interface IAuthor {
    name: string
    profilePicture: string
    description: string
}