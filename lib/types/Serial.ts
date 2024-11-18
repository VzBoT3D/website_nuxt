interface ISerial {
    id: number,
    mediaURL: string,
    description: string
    country: string
    printer: {
        name: string
    }
    attributes?: {
        location: {
            capital: string[]
            latlng: number[]
        }
        capitalInfo: {
            latlng: number[]
        }
    }
}