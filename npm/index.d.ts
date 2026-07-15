declare module '@apiverve/htmltoimage' {
  export interface htmltoimageOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface htmltoimageResponse {
    status: string;
    error: string | null;
    data: HTMLtoImageData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface HTMLtoImageData {
      imageName:   null | string;
      format:      null | string;
      downloadURL: null | string;
      expires:     number | null;
      htmlLength:  number | null;
      dimensions:  Dimensions;
  }
  
  interface Dimensions {
      width:  number | null;
      height: number | null;
  }

  export default class htmltoimageWrapper {
    constructor(options: htmltoimageOptions);

    execute(callback: (error: any, data: htmltoimageResponse | null) => void): Promise<htmltoimageResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: htmltoimageResponse | null) => void): Promise<htmltoimageResponse>;
    execute(query?: Record<string, any>): Promise<htmltoimageResponse>;
  }
}
