declare module '@apiverve/htmltoimage' {
  export interface htmltoimageOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface htmltoimageResponse {
    status: string;
    error: string | null;
    data: HTMLtoImageData;
    code?: number;
  }


  interface HTMLtoImageData {
      imageName:   string;
      format:      string;
      downloadURL: string;
      expires:     number;
      htmlLength:  number;
      dimensions:  Dimensions;
  }
  
  interface Dimensions {
      width:  number;
      height: number;
  }

  export default class htmltoimageWrapper {
    constructor(options: htmltoimageOptions);

    execute(callback: (error: any, data: htmltoimageResponse | null) => void): Promise<htmltoimageResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: htmltoimageResponse | null) => void): Promise<htmltoimageResponse>;
    execute(query?: Record<string, any>): Promise<htmltoimageResponse>;
  }
}
